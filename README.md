# Ecommerce

``` sh
#Mainnet

<div style="border:2px solid #000; padding:10px; display:inline-block; font-family:monospace;">
<strong>package</strong>: 0xb10b2e9c1f462efdc4dec92b4b5b95b32fdbcf1a7db727dde06b4591f0a10501<br>
<strong>module</strong>: ecommerceSui
</div>

```


``` sh
#Comandos
sui client balance
sui client publish

- sui client call --package 0xb10b2e9c1f462efdc4dec92b4b5b95b32fdbcf1a7db727dde06b4591f0a10501 --module ecommerceSui --function addProduct --args 0x9ddda6c823daeb1dc89649398d8036aa5e2e38274e99f3f357c599e2884d0deb 1 "Mouse Inalambrico"

- sui client call --package 0xb10b2e9c1f462efdc4dec92b4b5b95b32fdbcf1a7db727dde06b4591f0a10501 --module ecommerceSui --function modifyAvailableProduct --args 0x9ddda6c823daeb1dc89649398d8036aa5e2e38274e99f3f357c599e2884d0deb 2

- sui client call --package 0xb10b2e9c1f462efdc4dec92b4b5b95b32fdbcf1a7db727dde06b4591f0a10501 --module ecommerceSui --function deleteProduct --args 0x9ddda6c823daeb1dc89649398d8036aa5e2e38274e99f3f357c599e2884d0deb 2

- sui client call --package 0xb10b2e9c1f462efdc4dec92b4b5b95b32fdbcf1a7db727dde06b4591f0a10501 --module ecommerceSui --function decreaseStock --args 0x9ddda6c823daeb1dc89649398d8036aa5e2e38274e99f3f357c599e2884d0deb 1 3


```

``` sh
#Funciones
- createEcommerce(ctx: &mut TxContext)
- addProduct(ecommerce: &mut Ecommerce, id: u64, name: String)
- modifyAvailableProduct(ecommerce: &mut Ecommerce, id: u64)
- deleteProduct(ecommerce: &mut Ecommerce, id: u64)
- decreaseStock(ecommerce: &mut Ecommerce, id: u64, cantidad: u64)
```







