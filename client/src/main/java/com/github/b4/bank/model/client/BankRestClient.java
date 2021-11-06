package com.github.b4.bank.model.client;

import com.github.b4.bank.model.dto.CreditCard;
import com.github.b4.bank.model.dto.TransactionReplyMessage;
import com.github.b4.bank.model.dto.CreditCard;
import com.github.b4.bank.model.dto.TransactionReplyMessage;

public interface BankRestClient {

    public  TransactionReplyMessage transferMoney(CreditCard fromCard, CreditCard toCard, Double amount);

    public  TransactionReplyMessage transferMoney(CreditCard fromCard, CreditCard toCard, Double amount, String userName, String password);
}
