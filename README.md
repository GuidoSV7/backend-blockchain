# Ecommerce



# Mainnet

## Package & Module
| package                                                                 | module       |
|-------------------------------------------------------------------------|--------------|
| 0x55b99e0d55e27afe4cfc3f19e0ffddcbcd8e7d4b13af3bf143c9588f51bd150f     | ecommerceSui |

## Object (Ecommerce)
| object_id                                                               | tipo      |
|-------------------------------------------------------------------------|-----------|
| 0x1e890e39062040545579be71f833a52e0a7b5ca5be21cbefa9c9bdcaee5d5f5f      | Ecommerce |




``` sh
#Comandos
sui client balance
sui client publish

- sui client call --package 0x55b99e0d55e27afe4cfc3f19e0ffddcbcd8e7d4b13af3bf143c9588f51bd150f --module ecommerceSui --function addProduct --args 0x1e890e39062040545579be71f833a52e0a7b5ca5be21cbefa9c9bdcaee5d5f5f 1 "Mouse Inalambrico"

- sui client call --package 0x55b99e0d55e27afe4cfc3f19e0ffddcbcd8e7d4b13af3bf143c9588f51bd150f --module ecommerceSui --function modifyAvailableProduct --args 0x1e890e39062040545579be71f833a52e0a7b5ca5be21cbefa9c9bdcaee5d5f5f 2

- sui client call --package 0x55b99e0d55e27afe4cfc3f19e0ffddcbcd8e7d4b13af3bf143c9588f51bd150f --module ecommerceSui --function deleteProduct --args 0x1e890e39062040545579be71f833a52e0a7b5ca5be21cbefa9c9bdcaee5d5f5f 2

- sui client call --package 0x55b99e0d55e27afe4cfc3f19e0ffddcbcd8e7d4b13af3bf143c9588f51bd150f --module ecommerceSui --function decreaseStock --args 0x1e890e39062040545579be71f833a52e0a7b5ca5be21cbefa9c9bdcaee5d5f5f 1 3


```

``` sh
#Funciones
- createEcommerce(ctx: &mut TxContext)
- addProduct(ecommerce: &mut Ecommerce, id: u64, name: String)
- modifyAvailableProduct(ecommerce: &mut Ecommerce, id: u64)
- deleteProduct(ecommerce: &mut Ecommerce, id: u64)
- decreaseStock(ecommerce: &mut Ecommerce, id: u64, cantidad: u64)
```







