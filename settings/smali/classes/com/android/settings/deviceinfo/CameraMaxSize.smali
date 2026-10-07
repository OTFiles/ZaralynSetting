.class public Lcom/android/settings/deviceinfo/CameraMaxSize;
.super Ljava/lang/Object;
.source "CameraMaxSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static isSetCameraEnable:Z

.field public static mBackSize:I

.field public static mMaxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    .line 12
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 80
    sput v0, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    return-void
.end method

.method public static formatCameraSize(I)I
    .locals 6
    .param p0, "cameraSize"    # I

    .line 139
    div-int/lit16 v0, p0, 0x2710

    .line 140
    .local v0, "oneSize":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    .line 141
    div-int/lit8 v4, v0, 0x64

    rem-int/lit8 v5, v0, 0x64

    if-nez v5, :cond_0

    move v1, v2

    nop

    :cond_0
    add-int/2addr v4, v1

    mul-int/2addr v4, v3

    .end local v0
    .local v4, "oneSize":I
    :goto_0
    goto :goto_1

    .line 143
    .end local v4
    .restart local v0
    :cond_1
    div-int/lit8 v3, v0, 0xa

    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_2

    move v1, v2

    nop

    :cond_2
    add-int/2addr v3, v1

    mul-int/lit8 v4, v3, 0xa

    goto :goto_0

    .line 145
    .end local v0
    .restart local v4
    :goto_1
    return v4
.end method

.method public static getBackCameraMaxSize()I
    .locals 12

    .line 82
    const-string v0, "hqb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hqb__CameraMaxSize__getFrontCameraMaxSize__return__mBackSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget v0, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    if-lez v0, :cond_0

    sget v0, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "camera":Landroid/hardware/Camera;
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 88
    .local v3, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v4, -0x1

    .line 89
    .local v4, "cameraIndex":I
    move v5, v1

    .local v5, "camIdx":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 90
    invoke-static {v5, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 91
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_1

    .line 92
    move v4, v5

    .line 93
    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    .end local v5
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 97
    const-string v5, "hqb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hqb__CameraMaxSize__getFrontCameraMaxSize__cameraIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 130
    sget-boolean v5, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v5, :cond_3

    .line 131
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 132
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 98
    :cond_3
    return v1

    .line 100
    :cond_4
    :try_start_1
    invoke-static {v1}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 102
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v5

    .line 105
    goto :goto_2

    .line 103
    :catch_0
    move-exception v5

    .line 104
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v5
    :goto_2
    if-nez v2, :cond_6

    .line 107
    const-string v5, "hqb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hqb__CameraMaxSize__getFrontCameraMaxSize__camera = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    .line 130
    sget-boolean v5, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v5, :cond_5

    .line 131
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 132
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 108
    :cond_5
    return v1

    .line 111
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 112
    .local v5, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 113
    .local v6, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 114
    new-instance v8, Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;

    invoke-direct {v8, v7}, Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;-><init>(Lcom/android/settings/deviceinfo/CameraMaxSize$1;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 115
    .local v8, "maxSize":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    sput v9, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    .line 116
    const-string v9, "hqb"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hqb__CameraMaxSize__getFrontCameraMaxSize__mBackSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 118
    invoke-virtual {v2, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 119
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 120
    const/4 v2, 0x0

    .line 121
    sget v7, Lcom/android/settings/deviceinfo/CameraMaxSize;->mBackSize:I

    .line 130
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-boolean v9, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v9, :cond_7

    .line 131
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 132
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 121
    :cond_7
    return v7

    .line 123
    .end local v8
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 124
    invoke-virtual {v2, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 125
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 126
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    .line 130
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    sget-boolean v2, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v2, :cond_9

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    .line 127
    :catch_1
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-boolean v2, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v2, :cond_9

    .line 131
    :goto_3
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 132
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 135
    :cond_9
    return v1

    .line 130
    :goto_4
    sget-boolean v3, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v3, :cond_a

    .line 131
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 132
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    :cond_a
    throw v2
.end method

.method public static getFrontCameraMaxSize()I
    .locals 12

    .line 24
    const-string v0, "hqb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hqb__CameraMaxSize__getFrontCameraMaxSize__return__mMaxSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget v0, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    if-lez v0, :cond_0

    sget v0, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    return v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "camera":Landroid/hardware/Camera;
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 30
    .local v3, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v4, -0x1

    .line 31
    .local v4, "cameraIndex":I
    move v5, v1

    .local v5, "camIdx":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 32
    invoke-static {v5, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 33
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v0, :cond_1

    .line 34
    move v4, v5

    .line 35
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38
    .end local v5
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 39
    const-string v5, "hqb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hqb__CameraMaxSize__getFrontCameraMaxSize__cameraIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 72
    sget-boolean v5, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v5, :cond_3

    .line 73
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 74
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 40
    :cond_3
    return v1

    .line 42
    :cond_4
    :try_start_1
    invoke-static {v1}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 44
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v5

    .line 47
    goto :goto_2

    .line 45
    :catch_0
    move-exception v5

    .line 46
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v5
    :goto_2
    if-nez v2, :cond_6

    .line 49
    const-string v5, "hqb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hqb__CameraMaxSize__getFrontCameraMaxSize__camera = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    .line 72
    sget-boolean v5, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v5, :cond_5

    .line 73
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 74
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 50
    :cond_5
    return v1

    .line 53
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 54
    .local v5, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 55
    .local v6, "pictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 56
    new-instance v8, Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;

    invoke-direct {v8, v7}, Lcom/android/settings/deviceinfo/CameraMaxSize$CompareSizesByArea;-><init>(Lcom/android/settings/deviceinfo/CameraMaxSize$1;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 57
    .local v8, "maxSize":Landroid/hardware/Camera$Size;
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    sput v9, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    .line 58
    const-string v9, "hqb"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hqb__CameraMaxSize__getFrontCameraMaxSize__mMaxSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 60
    invoke-virtual {v2, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 61
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 62
    const/4 v2, 0x0

    .line 63
    sget v7, Lcom/android/settings/deviceinfo/CameraMaxSize;->mMaxSize:I

    .line 72
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-boolean v9, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v9, :cond_7

    .line 73
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 74
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 63
    :cond_7
    return v7

    .line 65
    .end local v8
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 66
    invoke-virtual {v2, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 67
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 68
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    .line 72
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    sget-boolean v2, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v2, :cond_9

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    .line 69
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .end local v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-boolean v2, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v2, :cond_9

    .line 73
    :goto_3
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 74
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    .line 77
    :cond_9
    return v1

    .line 72
    :goto_4
    sget-boolean v3, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    if-eqz v3, :cond_a

    .line 73
    sput-boolean v1, Lcom/android/settings/deviceinfo/CameraMaxSize;->isSetCameraEnable:Z

    .line 74
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CameraMaxSize;->setCameraTurnUpEnable(Z)Z

    :cond_a
    throw v2
.end method

.method private static setCameraTurnUpEnable(Z)Z
    .locals 6
    .param p0, "needHelp"    # Z

    .line 15
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "setHelpOperateCamera"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 17
    :catch_0
    move-exception v1

    .line 18
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    .end local v1
    return v0
.end method
