Urbinary = [0 1 0 0 1 0 1 0; % it says hi by the way!
             0 1 0 0 1 0 1 0;
             0 1 1 1 1 0 1 0;
             0 1 0 0 1 0 1 0;
             0 1 0 0 1 0 1 0]
 [rows, cols] = size(Urbinary);
 bins = cell(rows*cols,1);
 bin_vect = reshape(Urbinary, rows*cols,1);
 for i = 1:size(bin_vect) 
     bins{i} = num2str(bin_vect(i)); % convert to strings and put in a cell
 end
 bin_shape = reshape(bins,rows,cols);
 char_bin = reshape(horzcat(bin_shape{:}),rows,cols); %concatenate and reshape back to original 
 % write to desired location
 [filename, pathname] = uiputfile('*.txt', 'Locate directory for to write .txt file to');
 outpath = strcat(pathname,filename);
 fid = fopen(outpath,'w');
    for i=1: size(char_bin,1)
        fprintf(fid,'%s\r\n',char_bin(i,:));
    end
 fclose(fid);