# GNN_Tracking

<div align="center">
  <img src="[https://github.com/Redamancy8013/GNN_tracking/blob/main/visualization.jpg)">
</div>

This project visualizes the real-time object tracking with point clouds only. It uses gnn-pmb filter to improve the stability and accuracy of the tracker.

## 1.Notice

Before you compile this project, you need to download the [Nuscenes](https://www.nuscenes.org/download) dataset. This projects used the v1.0-mini version of the Nuscenes dataset.

Besides, you also need to acquire a set of detection from relevent dataset. In this project, [PointPIlliars](https://www.nuscenes.org/data/detection-pointpillars.zip) was being used.

After downloading the dataset and the detection file, put them into the proper directory.

In this project, eg. the `v1.0-mini Nuscenes` dataset is put into `/home/ez/project/dataset/nuscenes`. In the directory `/nuscenes`, there are `4` folders named sweeps, maps, samples and v1.0-mini and `1` file named  .v1.0-mini.txt.

In this project, eg. the `PointPilliars` detection file is put into `/home/ez/project/dataset/pointpillars/`. So there are `3` files in the `/pointpillars`: pointpillars_val.json, pointpillars_test.json and pointpillars_train.json.

## 2.Environment

`conda env create -f environment.yml`

`conda activate OpenPCDet`

## 3.Compile

## 4.Run

`cd /home/ez/project/tracking/`

`source devel/setup.bash`

`roslaunch tracking_module launch.launch`

## 5.More

If you want to change the directory of the dataset and detection file to your path, you can refer the lines below.

#### Nuscenes

/tracking/src/tracking_module/scripts/PubInfo.py: `line 142, line 184, line 302`.

#### Detection File

/tracking/src/tracking_module/scripts/PubInfo.py: `line 309`.

This project was accomplished on June 1, 2024 and was first upload to the github on March 10, 2025.

Contact Email: 2110539202@qq.com
