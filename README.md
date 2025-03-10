# GNN_Tracking

This project visualizes the real-time object tracking with point clouds only. It uses gnn-pmb filter to improve the stability and accuracy of the tracker.

## 1.Notice

Before you compile this project, you need to download the [Nuscenes](https://www.nuscenes.org/download) dataset. This projects used the v1.0-mini version of the Nuscenes dataset.

Besides, you also need to acquire a set of detection from relevent dataset. In this project, [PointPIlliars](https://www.nuscenes.org/data/detection-pointpillars.zip) was being used.

After downloading the dataset and the detection file, put them into the proper directory.

In this project, eg. the `v1.0-mini Nuscenes` dataset is put into `/home/ez/project/dataset/nuscenes`. In the directory `/nuscenes`, there are `4` folders named sweeps, maps, samples and v1.0-mini and `1` file named  `.v1.0-mini.txt`.

In this project, eg. the `PointPilliars` detection file is put into `/home/ez/project/dataset/pointpillars/`. So there are `3` files in the `/pointpillars`: pointpillars_val.json, pointpillars_test.json and pointpillars_train.json.
