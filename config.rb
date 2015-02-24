# DataMapper.setup(:default, 'mysql://root:root@localhost/zrsr')
# DataMapper.setup(:dusr, 'mysql://root:root@localhost/dusr')
# DataMapper.setup(:banka, 'mysql://root:root@localhost/banka')

# v pripade sqlite databazy odkomentujte a zakomentujte predchadzajuce riadky
DataMapper.setup(:default, 'sqlite:db/zrsr.db')
DataMapper.setup(:dusr, 'sqlite:db/dusr.db')
DataMapper.setup(:banka, 'sqlite:db/banka.db')
