  vpc_id = "fctp-april-batch-vpc-2026"
  Environment = "dev"
  vpc_cidr = "30.0.0.0/16"
  vpc_tag = "fctp-april-batch-vpc-2026"

  public_subnet_01_cidr = "30.0.1.0/24"
  public_subnet_01_name = "public-subnet-01"
  public_subnet_02_cidr = "30.0.2.0/24"
  public_subnet_02_name = "public-subnet-02"
  public_subnet_03_cidr = "30.0.3.0/24"
  public_subnet_03_name = "public-subnet-03"
  private_subnet_01_cidr = "30.0.4.0/24"
  private_subnet_01_name = "private-subnet-01"
  private_subnet_02_cidr = "30.0.5.0/24"
  private_subnet_02_name = "private-subnet-02"
  private_subnet_03_cidr = "30.0.6.0/24"
  private_subnet_03_name = "private-subnet-03"

  igw_name = "fctp-igw"

  public_rt_name = "fctp-public-rt"

   nat_gw_name = "prod_nat"
  private_rt_name = "prod_private_route_table"