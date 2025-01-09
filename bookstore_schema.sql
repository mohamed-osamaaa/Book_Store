-- Customer Table
create table customer(
    customer_Id int not null,
    first_name nvarchar(50),
    last_name nvarchar(50),
    email nvarchar(100),
    password_ nvarchar(50),
    city nvarchar(50),
    street nvarchar(50),
    zip_code nvarchar(50),
    primary key(customer_Id)
);

-- Customer Phone Table
create table cus_phone(
    cust_Id int not null,
    phone nvarchar(15),
    foreign key(cust_Id) references customer(customer_Id)
);

-- Order Table
create table order_(
    order_id int not null,
    customer_id int not null,
    day_ int,
    month_ int,
    year_ int,
    Quantity int not null,
    TotalPrice int not null,
    PaymentMethod nvarchar(100),
    Status_ nvarchar(100),
    primary key(order_id),
    foreign key(customer_id) references customer(customer_Id)
);

-- Book Table
create table book(
    Book_Id int not null,
    title nvarchar(50),
    day_ int,
    month_ int,
    year_ int,
    price int,
    Type_ nvarchar(50),
    description_ nvarchar(100),
    Discount nvarchar(50),
    Rank nvarchar(50),
    number_sold int,
    available_quantity int,
    primary key(Book_Id)
);

-- Author Table
create table author(
    author_Id int not null,
    first_name nvarchar(50),
    last_name nvarchar(50),
    email nvarchar(100),
    city nvarchar(50),
    street nvarchar(50),
    zip_code nvarchar(50),
    primary key(author_Id)
);

-- Author Phone Table
create table author_phone(
    auth_Id int not null,
    phone nvarchar(15),
    foreign key(auth_Id) references author(author_Id)
);

-- Relationship Table between Order and Book
create table R_OB(
    OId int not null,
    BId int not null,
    foreign key(OId) references order_(order_id),
    foreign key(BId) references book(Book_Id)
);

-- Relationship Table between Author and Book
create table R_AB(
    AId int not null,
    BKId int not null,
    foreign key(AId) references author(author_Id),
    foreign key(BKId) references book(Book_Id)
);
