function result = trisurface_feature(image)
    width = round(size(image,2)/3);

    for i = 0 : 2
        aux = width*i;
        image_part = image(:, (aux + 1):width+(aux));
        total_area = size(image_part,1) * size(image_part,2);
        
        foreground_area = bwarea(image_part);
        result(i+1) = foreground_area/total_area
    end
end