.class public Lcom/readboy/store/AppUpdate/ApInfo;
.super Ljava/lang/Object;
.source "ApInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/readboy/store/AppUpdate/ApInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private deleteLast:I

.field private doBackground:I

.field private downloadUrl:Ljava/lang/String;

.field private enforceCheck:Z

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private keyString:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private storeVersion:I

.field private url:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/readboy/store/AppUpdate/ApInfo$1;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/ApInfo$1;-><init>()V

    sput-object v0, Lcom/readboy/store/AppUpdate/ApInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "ApInfo"

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->deleteLast:I

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->doBackground:I

    .line 40
    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->enforceCheck:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "ApInfo"

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->deleteLast:I

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->doBackground:I

    .line 40
    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->enforceCheck:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->packageName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->versionCode:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->storeVersion:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->filePath:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->fileName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->downloadUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->md5:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->deleteLast:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->doBackground:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->url:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private buildApUpdateUrl()Ljava/lang/String;
    .locals 4

    .line 229
    const-string v0, ""

    .line 230
    .local v0, "ret":Ljava/lang/String;
    const-string v1, ""

    .line 232
    .local v1, "model":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 236
    .end local v2
    :goto_0
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ApInfo;->getKeyString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/readboy/store/AppUpdate/Utils;->isNullValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/update?firmware="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/readboy/store/AppUpdate/Utils;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&firmwareversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {}, Lcom/readboy/store/AppUpdate/Utils;->getFirmwareV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&storeversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/readboy/store/AppUpdate/ApInfo;->storeVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&systemversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/readboy/store/AppUpdate/ApInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/readboy/store/AppUpdate/ApInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 250
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/update?firmware="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/readboy/store/AppUpdate/Utils;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&firmwareversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {}, Lcom/readboy/store/AppUpdate/Utils;->getFirmwareV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&storeversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/readboy/store/AppUpdate/ApInfo;->storeVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&systemversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/readboy/store/AppUpdate/ApInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/readboy/store/AppUpdate/ApInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_1
    return-object v0
.end method

.method private setDefaultPath()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ApInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ApUpdate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/ApInfo;->setFilePath(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public enforceCheck()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->enforceCheck:Z

    return v0
.end method

.method public getDoBackground()Z
    .locals 2

    .line 154
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->doBackground:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyString()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->keyString:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreVersion()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->storeVersion:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/readboy/store/AppUpdate/Utils;->isNullValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/ApInfo;->buildApUpdateUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->url:Ljava/lang/String;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->versionCode:I

    return v0
.end method

.method public isDeleteLast()Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->deleteLast:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setDefaultValue(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/ApInfo;->setPackageName(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 62
    invoke-static {p1}, Lcom/readboy/store/AppUpdate/Utils;->getAPKVersion(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/ApInfo;->setVersionCode(I)Lcom/readboy/store/AppUpdate/ApInfo;

    .line 63
    const-string v0, "cn.dream.android.appstore"

    invoke-static {p1, v0}, Lcom/readboy/store/AppUpdate/Utils;->getAPKVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/readboy/store/AppUpdate/ApInfo;->setStoreVersion(I)V

    .line 64
    return-void
.end method

.method public setDeleteLast(I)V
    .locals 0
    .param p1, "deleteLast"    # I

    .line 150
    iput p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->deleteLast:I

    .line 151
    return-void
.end method

.method public setDoBackground(I)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "doBackground"    # I

    .line 158
    iput p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->doBackground:I

    .line 159
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->downloadUrl:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setEnforceCheck(Z)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "enforceCheck"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->enforceCheck:Z

    .line 194
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->fileName:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->filePath:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setKeyString(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "keyString"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->keyString:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->md5:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->packageName:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/readboy/store/AppUpdate/ApInfo;->setDefaultPath()V

    .line 78
    return-object p0
.end method

.method public setStoreVersion(I)V
    .locals 0
    .param p1, "storeVersion"    # I

    .line 95
    iput p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->storeVersion:I

    .line 96
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->url:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setVersionCode(I)Lcom/readboy/store/AppUpdate/ApInfo;
    .locals 0
    .param p1, "versionCode"    # I

    .line 86
    iput p1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->versionCode:I

    .line 87
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",packagename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ApInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/readboy/store/AppUpdate/ApInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 120
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->storeVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->deleteLast:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->doBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void
.end method
