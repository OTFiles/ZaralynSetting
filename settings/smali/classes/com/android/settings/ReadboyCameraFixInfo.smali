.class public Lcom/android/settings/ReadboyCameraFixInfo;
.super Ljava/lang/Object;
.source "ReadboyCameraFixInfo.java"


# instance fields
.field CameraInfoOrientation_Back:I

.field CameraInfoOrientation_Front:I

.field ComponentName:Ljava/lang/String;

.field Degrees_Back_landscape:I

.field Degrees_Back_portrait:I

.field Degrees_Front_landscape:I

.field Degrees_Front_portrait:I

.field Orientation_Back:I

.field Orientation_Front:I

.field Rotation_Back:I

.field Rotation_Front:I

.field private System_Rotation:I

.field facing:I

.field private isDeleteInfo:Z

.field private isGetDataSuccess:Z

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ReadboyCameraFixInfo;->isDeleteInfo:Z

    .line 19
    iput v0, p0, Lcom/android/settings/ReadboyCameraFixInfo;->facing:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ReadboyCameraFixInfo;->isGetDataSuccess:Z

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->ComponentName:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->packageName:Ljava/lang/String;

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Front:I

    .line 64
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Back:I

    .line 72
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Front:I

    .line 73
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Back:I

    .line 75
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_portrait:I

    .line 76
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_portrait:I

    .line 77
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_landscape:I

    .line 78
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_landscape:I

    .line 85
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Front:I

    .line 86
    iput v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Back:I

    .line 178
    iput v0, p0, Lcom/android/settings/ReadboyCameraFixInfo;->System_Rotation:I

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/ReadboyCameraFixInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteInfo()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/android/settings/ReadboyCameraFixInfo;->isDeleteInfo:Z

    return v0
.end method

.method public setCameraInfoOrientation_Back(I)V
    .locals 0
    .param p1, "cameraInfoOrientation_Back"    # I

    .line 109
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Back:I

    .line 110
    return-void
.end method

.method public setCameraInfoOrientation_Front(I)V
    .locals 0
    .param p1, "cameraInfoOrientation_Front"    # I

    .line 101
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Front:I

    .line 102
    return-void
.end method

.method public setDegrees_Back_landscape(I)V
    .locals 0
    .param p1, "degrees_Back_landscape"    # I

    .line 157
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_landscape:I

    .line 158
    return-void
.end method

.method public setDegrees_Back_portrait(I)V
    .locals 0
    .param p1, "degrees_Back_portrait"    # I

    .line 141
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_portrait:I

    .line 142
    return-void
.end method

.method public setDegrees_Front_landscape(I)V
    .locals 0
    .param p1, "degrees_Front_landscape"    # I

    .line 149
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_landscape:I

    .line 150
    return-void
.end method

.method public setDegrees_Front_portrait(I)V
    .locals 0
    .param p1, "degrees_Front_portrait"    # I

    .line 133
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_portrait:I

    .line 134
    return-void
.end method

.method public setDeleteInfo(Z)V
    .locals 0
    .param p1, "deleteInfo"    # Z

    .line 13
    iput-boolean p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->isDeleteInfo:Z

    .line 14
    return-void
.end method

.method public setOrientation_Back(I)V
    .locals 0
    .param p1, "orientation_Back"    # I

    .line 173
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Back:I

    .line 174
    return-void
.end method

.method public setOrientation_Front(I)V
    .locals 0
    .param p1, "orientation_Front"    # I

    .line 165
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Front:I

    .line 166
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->packageName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRotation_Back(I)V
    .locals 0
    .param p1, "rotation_Back"    # I

    .line 125
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Back:I

    .line 126
    return-void
.end method

.method public setRotation_Front(I)V
    .locals 0
    .param p1, "rotation_Front"    # I

    .line 117
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Front:I

    .line 118
    return-void
.end method

.method public setSystem_Rotation(I)V
    .locals 0
    .param p1, "system_Rotation"    # I

    .line 185
    iput p1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->System_Rotation:I

    .line 186
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Front:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Back:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Front:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Back:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_portrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_portrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_landscape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_landscape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Front:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Back:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->System_Rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadboyCameraFixInfo{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", CameraInfoOrientation_Front="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Front:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CameraInfoOrientation_Back="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->CameraInfoOrientation_Back:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Rotation_Front="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Front:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Rotation_Back="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Rotation_Back:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Degrees_Front_portrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_portrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Degrees_Back_portrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_portrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Degrees_Front_landscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Front_landscape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Degrees_Back_landscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Degrees_Back_landscape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Orientation_Front="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Front:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Orientation_Back="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->Orientation_Back:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", System_Rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/ReadboyCameraFixInfo;->System_Rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
