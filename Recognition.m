function OutputName = Recognition(TestImage, m, A, Eigenfaces)
% Recognizing step....
%
% Description: This function compares two faces by projecting the images into facespace and 
% measuring the Euclidean distance between them.
%
% Argument:      TestImage              - Path of the input test image
%
%                m                      - (M*Nx1) Mean of the training
%                                         database, which is output of 'EigenfaceCore' function.
%
%                Eigenfaces             - (M*Nx(P-1)) Eigen vectors of the
%                                         covariance matrix of the training
%                                         database, which is output of 'EigenfaceCore' function.
%
%                A                      - (M*NxP) Matrix of centered image
%                                         vectors, which is output of 'EigenfaceCore' function.
% 
% Returns:       OutputName             - Name of the recognized image in the training database.
%
% See also: RESHAPE, STRCAT

                 

%%%%%%%%%%%%%%%%%%%%%%%% Projecting centered image vectors into facespace
% All centered images are projected into facespace by multiplying in
% Eigenface basis's. Projected vector of each face will be its corresponding
% feature vector.

ProjectedImages = [];
Train_Number = size(Eigenfaces,2);
for i = 1 : Train_Number
    temp = Eigenfaces'*A(:,i); % Projection of centered images into facespace
    ProjectedImages = [ProjectedImages temp]; 
end

%%%%%%%%%%%%%%%%%%%%%%%% Extracting the PCA features from test image
InputImage = imread(TestImage);
temp = InputImage(:,:,1);

[irow icol] = size(temp);
InImage = reshape(temp',irow*icol,1);
Difference = double(InImage)-m; % Centered test image
ProjectedTestImage = Eigenfaces'*Difference; % Test image feature vector

%%%%%%%%%%%%%%%%%%%%%%%% Calculating Euclidean distances 
% Euclidean distances between the projected test image and the projection
% of all centered training images are calculated. Test image is
% supposed to have minimum distance with its corresponding image in the
% training database.

Euc_dist = [];
for i = 1 : Train_Number
    q = ProjectedImages(:,i);
    temp = ( norm( ProjectedTestImage - q ) )^2;
    Euc_dist = [Euc_dist temp];
end
[~ , Recognized_index] = min(Euc_dist);
[OutputName] = strcat(int2str(Recognized_index),'.jpg');
 if(Recognized_index<=10)
           strmsg1 = 'The recognised person is ';
            Name = 'MUPPALLA BHANU PRAKASH';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        
  elseif(Recognized_index>10)&&(Recognized_index<=20)
      strmsg1 = 'The recognised person is ';
            Name = 'NAMAN J DOSHI ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
      elseif(Recognized_index>20)&&(Recognized_index<=30)
      strmsg1 = 'The recognised person is ';
            Name = 'NAVEEN RAJ.E ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
      
        end    
        elseif(Recognized_index>30)&&(Recognized_index<=40)
      strmsg1 = 'The recognised person is ';
            Name = 'SUBASH.P ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
  elseif(Recognized_index>41)&&(Recognized_index<=50)
      strmsg1 = 'The recognised person is ';
            Name = 'PRANAV.E';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
       
elseif(Recognized_index>51)&&(Recognized_index<=60)
      strmsg1 = 'The recognised person is ';
            Name = 'SREE KRISHNA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end

        elseif(Recognized_index>60)&&(Recognized_index<=70)
      strmsg1 = 'The recognised person is ';
            Name = 'PRAVEEN KUMAR.S ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>70)&&(Recognized_index<=80)
      strmsg1 = 'The recognised person is ';
            Name = 'RAM KUMAR.D';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>80)&&(Recognized_index<=90)
      strmsg1 = 'The recognised person is ';
            Name = 'RISHIKANTH.D ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>90)&&(Recognized_index<=100)
      strmsg1 = 'The recognised person is ';
            Name = 'RISHI KOUSHAL.N';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>100)&&(Recognized_index<=110)
      strmsg1 = 'The recognised person is ';
            Name = 'ROHAN Y MEHTA ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>110)&&(Recognized_index<=120)
      strmsg1 = 'The recognised person is ';
            Name = 'RUCHIT M JAIN';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>120)&&(Recognized_index<=130)
      strmsg1 = 'The recognised person is ';
            Name = 'SAGAR SHAH ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>130)&&(Recognized_index<=140)
      strmsg1 = 'The recognised person is ';
            Name = ' SAKTHIDHARAN.T';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>140)&&(Recognized_index<=150)
      strmsg1 = 'The recognised person is ';
            Name = 'SANDEEP KUMAR.G';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>150)&&(Recognized_index<=160)
      strmsg1 = 'The recognised person is ';
            Name = 'SANDESH K JAIN ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>160)&&(Recognized_index<=170)
      strmsg1 = 'The recognised person is ';
            Name = 'SARATH RAJA.R';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>170)&&(Recognized_index<=180)
      strmsg1 = 'The recognised person is ';
            Name = 'SREEKRISHNA SRIDHAR';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>180)&&(Recognized_index<=190)
      strmsg1 = 'The recognised person is ';
            Name = ' SRIVANTH.S';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>190)&&(Recognized_index<=200)
      strmsg1 = 'The recognised person is ';
            Name = 'SUBASH.P ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>200)&&(Recognized_index<=210)
      strmsg1 = 'The recognised person is ';
            Name = 'SURYA KUMARAN.S';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>210)&&(Recognized_index<=220)
      strmsg1 = 'The recognised person is ';
            Name = 'VARMA M.N ';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>220)&&(Recognized_index<=230)
      strmsg1 = 'The recognised person is ';
            Name = ' VIJAY.B';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>230)&&(Recognized_index<=240)
      strmsg1 = 'The recognised person is ';
            Name = 'VIKRAM KUMAR.R';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>240)&&(Recognized_index<=250)
      strmsg1 = 'The recognised person is ';
            Name = 'VINOTH KUMAR.S';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>250)&&(Recognized_index<=260)
      strmsg1 = 'The recognised person is ';
            Name = 'KARTHICK.L';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>260)&&(Recognized_index<=270)
      strmsg1 = 'The recognised person is ';
            Name = 'PETER PARKER';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>270)&&(Recognized_index<=280)
      strmsg1 = 'The recognised person is ';
            Name = 'JOHN CONNOR';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>280)&&(Recognized_index<=290)
      strmsg1 = 'The recognised person is ';
            Name = 'BRUCE WAYNE';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>290)&&(Recognized_index<=300)
      strmsg1 = 'The recognised person is ';
            Name = 'TONY STARK';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>300)&&(Recognized_index<=310)
      strmsg1 = 'The recognised person is ';
            Name = 'RITA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
 elseif(Recognized_index>310)&&(Recognized_index<=320)
      strmsg1 = 'The recognised person is ';
            Name = 'ADITI';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>320)&&(Recognized_index<=330)
      strmsg1 = 'The recognised person is ';
            Name = 'AISHWARYA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>330)&&(Recognized_index<=340)
      strmsg1 = 'The recognised person is ';
            Name = 'ELINA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>340)&&(Recognized_index<=350)
      strmsg1 = 'The recognised person is ';
            Name = 'KANCHANA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>350)&&(Recognized_index<=360)
      strmsg1 = 'The recognised person is ';
            Name = 'HENNA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>360)&&(Recognized_index<=370)
      strmsg1 = 'The recognised person is ';
            Name = 'KAJAL';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>370)&&(Recognized_index<=380)
      strmsg1 = 'The recognised person is ';
            Name = 'KEYA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>380)&&(Recognized_index<=390)
      strmsg1 = 'The recognised person is ';
            Name = 'MONA';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
        elseif(Recognized_index>390)&&(Recognized_index<=400)
      strmsg1 = 'The recognised person is ';
            Name = 'EMILY';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
         elseif(Recognized_index>400)&&(Recognized_index<=405)
      strmsg1 = 'The recognised person is ';
            Name = 'STEVE ROGERS';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        end
         elseif(Recognized_index>405)&&(Recognized_index<=410)
      strmsg1 = 'The recognised person is ';
            Name = 'BRUCE BANNER';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        %}
        end
        
        elseif(Recognized_index>410)&&(Recognized_index<=415)
      strmsg1 = 'The recognised person is ';
            Name = 'ALBERT EINSTEIN';
            msg = [strmsg1 Name];
            msgbox(msg);
       filename='Attendance.xlsx';
        Date = datestr(now,'dd-mm-yyyy HH-MM');
        Attendance = 'PRESENT';
        fileExist = exist(filename,'file');
        if fileExist==0
       header = {'Name', 'Date' ,'Attendance'};
       xlswrite(filename,header);
        else
        [~,~,input] = xlsread(filename); 
        new_data = {Name,Date,Attendance}; 
        output = cat(1,input,new_data); 
        xlswrite(filename,output);
        %}
        end
 end
 
     