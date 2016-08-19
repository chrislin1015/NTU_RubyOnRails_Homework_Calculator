# 計算機作業

# 抓使用者輸入數字的函式
def InputNumber(iCount)
	_Number = 0;
	begin
		puts "====================="
		puts "請輸入第#{iCount}個數字";
		puts "====================="
		_Number = gets.chomp.to_i;
	end while !_Number.is_a?(Numeric) #判斷是否為數字
	return _Number;
end

#  抓使用者輸入運算符號的函式
def InputOperator()
	_Operator = "";
	begin
		puts "=============="
		puts "請輸入+，-，*，/";
		puts "=============="
		_Operator = gets.chomp;		
	end while (_Operator != "+") && (_Operator != "-") && (_Operator != "*") && (_Operator != "/") # 如果不是輸入+-*/就重複要求輸入
	return _Operator;
end

# 計算結果的函式
def CalculatorResult(iNumber1, iNumber2, iOperator)
	if iOperator == "+"
		return iNumber1 + iNumber2;
    elsif iOperator == "-"
	    return iNumber1 - iNumber2;
	elsif iOperator == "*"
		return iNumber1 * iNumber2;
	elsif iOperator == "/"
		return iNumber1 / iNumber2;
	else
		return 0;
	end
end

# 建立一個無窮迴圈
begin
	_Number1 = InputNumber("1");
	_Operator = InputOperator();
	_Number2 = InputNumber("2");
    _Result = CalculatorResult(_Number1, _Number2, _Operator);

    puts "==================="
	puts "計算結果為 #{_Number1} #{_Operator} #{_Number2} = #{_Result}";
	puts "==================="

	puts "=================="
	puts "請問是否要繼續 y / n"
	puts "=================="
	_YorN = gets.chomp;
	
end while (_YorN == "Y") || (_YorN == "y") #檢查是否輸入的是Y或y這個字母
