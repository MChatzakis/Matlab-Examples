%Task 1
function [RMSE] = RootMeanSquareError(prediction,groundtruth)
	x=length(prediction);
	z=length(groundtruth);
    if(x==z)
        RMSE=0;
        for i=1:1:x
            RMSE=((prediction(i)-groundtruth(i))*(prediction(i)-groundtruth(i)))+RMSE;
        end
        RMSE=RMSE*(1/x);
        RMSE=sqrt(RMSE);
    else
        disp('Vector size is wrong!');
    end
end