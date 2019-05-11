#!/bin/sh

# phần khai của khách hàng
DATE=`date`
echo "Ngày hôm nay là $DATE"
echo
echo "quý khách tên là gì ạ:"
read name
echo "chào bạn $name"
echo "xin chào $name đến với HOÀNG NAM RESTAURANT"
echo
echo "$name vui lòng nhập thành phố nơi hiện tại đang sinh sống và công tác:"
echo
read add
echo
echo "bạn $name đang có mặt tại : $add à"
echo
echo "$name làm ơn cho biết bạn đang ở quận nào ở $add nhỉ"
echo
read district
echo
echo "ôhhhh mình cũng đang ở: $district"
echo
echo "đồng hương đồng hương !!!"
echo
# hỏi đặt bàn chưa
echo "$name hiện đã đặt bàn trước chưa nhỉ???"
select Tick in rồi chưa
do
    case $Tick in
        (rồi)
             echo "ồ tuyệt quá :)))))"
             echo "số điện thoại của $name là gì:"
             read TLnumber
             echo "có phải số của $name là $TLnumber không"
             echo
             echo "số của bạn đẹp thật đấy"
             echo
             echo "bạn chọn option ăn ở phía dưới để nhân viên dẫn bạn vào bàn"
             break
             ;;
        (chưa)
             echo "vậy ạ taị sao $name lại ko đặt bàn trước chứ"
             echo "$name vui lòng chọn option ăn ở phía dưới để nhân viên dẫn $name vào bàn"
             break
             ;;
        (*)
             echo "$name chọn lại đi $name chúng tôi không đùa đâu"
             ;;     
    esac
done    


# phần lựa chọn kiểu muốn ăn
echo "dưới đây là kiểu $name muốn ăn"
echo "hay lựa chọn con số tương ứng với kiểu bạn muốn ăn"
echo
select Kind in lẩu nướng buffet none
do
    case $Kind in
    (lẩu)
         echo "bạn vừa chọn lẩu"
         echo
         echo "bạn lựa chọn đồ ăn kèm nhé"
         break
         ;;
    (nướng)
         echo "bạn vừa chọn nướng"
         echo "chúng tôi sẽ chuẩn bị than nướng cho bạn"
         echo
         echo "$name chọn đồ ăn kèm phía dưới nhé"
         break
         ;;
    (buffet)
         echo "bạn vừa chọn buffet"
         echo "bạn có thể ra ngoài bàn chúng tôi có sẵn đồ ăn cho bạn chọn"
         break
         ;;
    (none)
         echo "không biết bạn muốn ăn gì lúc này à"
         echo
         echo "chúng tôi có rất nhiều món ngon hợp với kiểu ăn bạn thích đấy "
         echo
         echo "$name chọn trong 3 option trên đi nhé "
         ;;
    (*)
         echo "bạn chọn sai rồi chọn lại đi"
         ;;    
    esac
done    


# phần lựa chọn menu
echo "$name lựa chọn món ăn yêu thích và ấn số theo món ăn tương ứng"
echo "cảm ơn $name"
select Foods in cua sò ốc hến lợn bò voi sấu heo mú gấu chó mèo none 
do
  case $Foods in
    (cua|sò|ốc|hến)
        echo "những món ngày ngon quý khách chờ trong vòng 1 tiếng đồng hồ"
        echo
        echo "bạn muốn dùng thêm gì nữa không"
        ;;
    (lợn|bò|voi)
        echo "mòn này to đợi hơi lâu $name nhé"
        echo
        echo "bạn muốn dùng thêm gì nữa không"
        ;;
    (sấu|heo|mú)
        echo "đây là hải sản đợi chúng tôi đi bắt về đã nhé"
        echo
        echo "bạn muốn dùng thêm gì nữa không"
        ;;
    (gấu|chó|mèo)
         echo "đây là thú cưng không ăn được"
         echo
         echo "$name chọn đồ ăn khác đi :))))))"
         ;;    
    (none)
        echo "cảm ơn $name đã chọn dịch vụ của chúng tôi"
        break
        ;;
    (*) echo "món này chúng tôi không phục vụ, cảm ơn $name"
        ;;
  esac

done

echo "sau khi chọn xong $name vui lòng ra quầy casher thanh toán luôn hộ mình nhé"
echo
echo "cảm ơn $name, yêu $name"



