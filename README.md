﻿# BT-ATBMHTTT-1 - *lab01-1412420-1412574*

**Name of your app** là một bài tập 1 tại môn ATBMHTTT. Bài tập yêu cầu sinh viên tạo cơ sở dữ liệu, phân quyền theo các yêu cầu.

Thành viên:
* [x] **1412420** Phan Hữu Phước ([Huuphuoc19](https://github.com/Huuphuoc19))
* [x] **1412574** Đặng Văn Trí ([DangVanTri](https://github.com/DangVanTri))

## Yêu cầu

Sinh viên check vào các mục bên dưới và ghi mã sinh viên đã làm vào chức năng theo mẫu. Mục nào ko có MSSV là tính điểm theo nhóm. Cần sắp xếp các chức năng bên dưới theo thứ tự MSSV đã thực hiện.

Yêu cầu **GIT**
* [ ] Có sử dụng GIT.
* [ ] Sử dụng GIT theo Centralized Workflow.
* [x] Sử dụng GIT theo Feature Branch Workflow.
* [ ] Sử dụng GIT theo Gitflow Workflow.

Yêu cầu **bắt buộc**
* [x] Viết script tạo cấu trúc cơ sở dữ liệu (**1412420**)
* [x] Viết script thêm dữ liệu (**1412420**)
* [x] Tạo tài khoản cho các nhân viên trong bảng Nhân Viên. Tên tài khoản trùng với mã nhân viên. Tạo ít nhất 5 tài khoản cho mỗi vị trí: trưởng dự án, trưởng phòng, trưởng chi nhánh, nhân viên, giám đốc và ít nhất 5 dòng cho các bảng dữ liệu còn lại. (**1412420**)
* [x] Tạo các role cho các vị trí phù hợp cho công ty. (**1412574**)
* [x] Chỉ trưởng phòng được phép cập nhật và thêm thông tin vào dự án (DAC). (**1412420**)
* [x] Giám đốc được phép xem thông tin dự án gồm (mã dự án, tên dự án, kinh phí, tên phòng chủ trì, tên chi nhánh chủ trì, tên trưởng dự án và tổng chi) (DAC). (**1412420**)
* [x] Chỉ trưởng phòng, trưởng chi nhánh được cấp quyền thực thi stored procedure cập nhật thông tin phòng ban của mình (DAC). (**1412574**)
* [x] Tất cả nhân viên bình thường (trừ trưởng phòng, trưởng chi nhánh và các trưởng dự án) chỉ được phép xem thông tin nhân viên trong phòng của mình, chỉ được xem lương của bản thân (VPD). (**1412420**)
* [x] Trưởng dự án chỉ được phép đọc, ghi thông tin chi tiêu của dự án mình quản lý (VPD). (**1412574**)
* [x] Trưởng phòng chỉ được phép đọc thông tin chi tiêu của dự án trong phòng ban mình quản lý. Với những dự án không thuộc phòng ban của mình, các trưởng phòng được phép xem thông tin chi tiêu nhưng không được phép xem số tiền cụ thể (VPD). (**1412420**)
* [ ] Mỗi dự án trong công ty có các mức độ nhạy cảm được đánh dấu bao gồm “Thông thường”, “Giới hạn”, “Bí mật”, “Bí mật cao”. Mỗi dự án có thể thuộc quyền quản lý của tổng công ty hoặc của 1 trong 3 chi nhánh “Tp.Hồ Chí Minh”, “Hà Nội”, “Đà Nẵng”. Mỗi dự án có thể liên quan đến các phòng ban: “Nhân sự”, “Kế toán”, “Kế hoạch” (OLS).
    * [ ] Tạo các thành phần policy. (**MSSV**)
    * [ ] Trưởng chi nhánh được phép truy xuất tất cả dữ liệu chi tiêu của dự án của tất cả các phòng ban thuộc quyền quản lý của mình. (**MSSV**) (**MSSV**)
    * [ ] Trưởng chi nhánh Hà Nội được phép truy xuất dữ liệu của chi nhánh Hà Nội và tất cả các chi nhánh khác. (**MSSV**)
    * [ ] Trưởng phòng được phép đọc dữ liệu dự án của tất cả phòng ban nhưng chỉ được phép ghi dữ liệu dự án thuộc phòng của mình. (**MSSV**)
    * [ ] Nhân viên chỉ được đọc dữ liệu dự mình tham gia.  (**1412420**)
* [X] Mỗi thông tin thu chi sẽ được đánh dấu các mức độ “Nhạy cảm”, “Không nhạy cảm”, “Bí mật” và thuộc các nhóm như “Lương”, “Quản lý”, “Vật liệu” (OLS).
    * [X] Nhân viên phụ trách đủ các lĩnh vực, có cấp độ phù hợp mới được phép truy xuất dữ liệu thu chi. (**1412420**)
    * [X] Ngoài ra, mỗi thông tin thu chi còn quy định cấp “Quản lý” hay “Nhân viên” để xác định dữ liệu này thuộc cấp quản lý của nhân viên hay quản lý dự án. Quản lý có thể xem tất cả thông tin thu chi của nhân viên. (**1412420**)

Liệt kê các **yêu cầu nâng cao** đã thực hiện:
* [ ] Chức năng 1
* [ ] Chức năng 2



Link ảnh GIF demo ứng dụng:
##### YC1
![YC1](YC1.gif)
##### YC2
![YC2](YC2.gif)
##### YC3
![YC3](YC3.gif)
##### YC4
![YC4](YC4.gif)
##### YC5
![YC5](YC5.gif)
##### YC6
![YC6](YC6.gif)
##### YC7
![YC7](YC7.gif)
##### YC8
![YC8](YC8.gif)
##### YC10
![YC8](YC10.gif)

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
