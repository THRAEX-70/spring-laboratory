package org.thraex.platform.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.thraex.base.controller.BaseController;
import org.thraex.platform.entity.Role;
import org.thraex.platform.service.RoleService;

/**
 * @author 鬼王
 * @date 2020/08/28 21:18
 */
@RestController
@RequestMapping("api/role")
public class RoleController extends BaseController<Role, RoleService> {

    @GetMapping("unique")
    public ResponseEntity<Boolean> uniqueness(String id, String code) {
        return ResponseEntity.ok(service.unique(id, code));
    }

}
