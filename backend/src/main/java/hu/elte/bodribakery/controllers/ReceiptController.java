/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.elte.bodribakery.controllers;

import hu.elte.bodribakery.entities.Receipt;
import hu.elte.bodribakery.entities.User;
import hu.elte.bodribakery.repositories.ReceiptRepository;
import hu.elte.bodribakery.repositories.UserRepository;
import hu.elte.bodribakery.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin
@RestController
/**
 *
 * @author stefa
 */
public class ReceiptController {

    @Autowired
    private ReceiptRepository receiptRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    /*
    @GetMapping("/rec/id")
    public List<CustomizedReceipt> getVisibleReceipts() {
        //return receiptRepository.findVisibleReceipts();
    }
    */
    @GetMapping("/rec/{id}")
    public Receipt get(@PathVariable int id){
        return  receiptRepository.findById(id).get();
    }

    @GetMapping("/rec")
    public List<Receipt> getUserReceipts(){
        User actUser = userService.getActUser();
        return receiptRepository.findAllByUserId(actUser.getId());
    }

    @PostMapping("/new")
    public ResponseEntity newReceipt(@RequestBody Receipt receipt) {
        receipt.setUser(userService.getActUser());
        receiptRepository.save(receipt);
        return ResponseEntity.ok().build();
    }

}
