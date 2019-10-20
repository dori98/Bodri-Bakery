/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.elte.bodribakery.controllers;

import hu.elte.bodribakery.entities.customized.CustomizedReceipt;
import hu.elte.bodribakery.repositories.ReceiptRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
/**
 *
 * @author stefa
 */
public class ReceiptController {

    @Autowired
    private ReceiptRepository receiptRepository;

    @GetMapping("/receipts")
    public List<CustomizedReceipt> getVisibleReceipts() {
        return receiptRepository.findVisibleReceipts();
    }
}
