import h5py
from utils.weighted_acc_rmse import weighted_rmse_torch_channels, weighted_acc_torch_channels, unweighted_acc_torch_channels, weighted_acc_masked_torch_channels

NVIDIA = h5py.File('/home/shamer/nobackup/border_data/ERA5_2018_jan_predicted_regridded.nc')
CERRA_TRUTH = h5py.File('/home/shamer/nobackup/border_data/2018_CERRA_nosurface.h5')

print(weighted_rmse_torch_channels(NVIDIA['fields'][i

