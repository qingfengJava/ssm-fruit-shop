package com.fruit.controller;

import com.fruit.base.BaseController;
import com.fruit.po.Item;
import com.fruit.po.ItemCategory;
import com.fruit.po.TjDto;
import com.fruit.service.ItemCategoryService;
import com.fruit.service.ItemService;
import com.fruit.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 类目C层
 */
@Controller
@RequestMapping("/itemCategory")
public class ItemCategoryController extends BaseController {

    @Autowired
    ItemCategoryService itemCategoryService;

    /**
     * 分页查询类目列表
     */
    @RequestMapping("/findBySql")
      public String findBySql(Model model,ItemCategory itemCategory){
        String sql = "select * from item_category where isDelete = 0 and pid is null order by id";
        Pager<ItemCategory> pagers = itemCategoryService.findBySqlRerturnEntity(sql);
        model.addAttribute("pagers",pagers);
        model.addAttribute("obj",itemCategory);
        return "itemCategory/itemCategory";
    }

    /**
     * 转向新增一级分类页面
     */
    @RequestMapping("/add")
    public String add(){
        return "itemCategory/add";
    }

    /**
     * 新增一级分类保存功能
     */
    @RequestMapping("exAdd")
    public String exAdd(ItemCategory itemCategory){
        itemCategory.setIsDelete(0);
        itemCategoryService.insert(itemCategory);
        return "redirect: /itemCategory/findBySql.action";
    }

    /**
     * 转向到修改一级分类页面
     */
    @RequestMapping("/update")
    public String update(Integer id, Model model){
        ItemCategory itemCategory = itemCategoryService.load(id);
        model.addAttribute("obj",itemCategory);
        return "itemCategory/update";
    }

    /**
     * 修改一级分类
     */
    @RequestMapping("/exUpdate")
    public String exUpdate(ItemCategory itemCategory){
        itemCategoryService.updateById(itemCategory);
        return "redirect: /itemCategory/findBySql.action";
    }

    /**
     * 删除类目
     */
    @RequestMapping("/delete")
    public String delete(Integer id){
        //删除本身
        ItemCategory load = itemCategoryService.load(id);
        load.setIsDelete(1);
        load.setPid(15);
        itemCategoryService.updateById(load);
        //将下级也删除
        String sql = "update item_category set isDelete = 1 where pid="+id;
        itemCategoryService.updateBysql(sql);
        return "redirect: /itemCategory/findBySql.action";
    }

    /**
     * 查看二级分类
     */
    @RequestMapping("/findBySql2")
    public String findBySql2(ItemCategory itemCategory,Model model){
        String sql = "select * from item_category where isDelete=0 and pid="+itemCategory.getPid()+" order by id";
        Pager<ItemCategory> pagers = itemCategoryService.findBySqlRerturnEntity(sql);
        model.addAttribute("pagers",pagers);
        model.addAttribute("obj",itemCategory);
        return "itemCategory/itemCategory2";
    }

    /**
     * 转向新增二级类目页面
     */
    @RequestMapping("/add2")
    public String add2(int pid, Model model){
        model.addAttribute("pid",pid);
        return "itemCategory/add2";
    }

    /**
     * 新增二级类目保存功能
     */
    @RequestMapping("exAdd2")
    public String exAdd2(ItemCategory itemCategory){
        itemCategory.setIsDelete(0);
        itemCategoryService.insert(itemCategory);
        return "redirect: /itemCategory/findBySql2.action?pid="+itemCategory.getPid();
    }

    /**
     * 转向到修改二级类目页面
     */
    @RequestMapping("/update2")
    public String update2(Integer id, Model model){
        ItemCategory itemCategory = itemCategoryService.load(id);
        model.addAttribute("obj",itemCategory);
        return "itemCategory/update2";
    }

    /**
     * 修改二级分类
     */
    @RequestMapping("/exUpdate2")
    public String exUpdate2(ItemCategory itemCategory){
        itemCategoryService.updateById(itemCategory);
        return "redirect: /itemCategory/findBySql2.action?pid="+itemCategory.getPid();
    }

    /**
     * 删除二级类目
     */
    @RequestMapping("/delete2")
    public String delete2(Integer id,Integer pid){
        //删除本身
        ItemCategory load = itemCategoryService.load(id);
        load.setIsDelete(1);
        itemCategoryService.updateById(load);
        return "redirect: /itemCategory/findBySql2.action?pid="+pid;
    }

    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "/tj")
    public String tj(ItemCategory itemCategory, Model model, HttpServletRequest request, HttpServletResponse response) {
        //分页查询
        String sql = "SELECT * FROM item_category WHERE isDelete = 0 and pid is null";
        sql += " ORDER BY ID DESC ";
        List<ItemCategory> list = itemCategoryService.listBySqlReturnEntity(sql);
        List<Map<String,Object>> maps = new ArrayList<Map<String,Object>>();
        List<TjDto> res = new ArrayList<TjDto>();
        if (!CollectionUtils.isEmpty(list)){
            for (ItemCategory c : list){
                TjDto td = new TjDto();
                int tot = 0;
                List<Item> listBySqlReturnEntity = itemService.listBySqlReturnEntity("SELECT * FROM item WHERE 1=1 and isDelete =0 and category_id_one="+c.getId());
                if (!CollectionUtils.isEmpty(listBySqlReturnEntity)){
                    for (Item i : listBySqlReturnEntity){
                        tot+= i.getGmNum();
                    }
                }
                Map<String,Object> map = new HashMap<String,Object>();
                map.put("name", c.getName());
                map.put("value", tot);
                maps.add(map);
            }
        }
        //存储查询条件
        model.addAttribute("maps", maps);
        return "itemCategory/tj";
    }
}













