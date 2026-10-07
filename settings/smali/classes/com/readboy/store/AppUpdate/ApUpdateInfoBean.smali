.class public Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;
.super Ljava/lang/Object;
.source "ApUpdateInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private detail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detail"
    .end annotation
.end field

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file"
    .end annotation
.end field

.field private enforceflag:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enforceflag"
    .end annotation
.end field

.field private errorcode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorcode"
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "md5"
    .end annotation
.end field

.field private updateflag:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateflag"
    .end annotation
.end field

.field private updatetitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updatetitle"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vname"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean$1;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean$1;-><init>()V

    sput-object v0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->detail:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->versionName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->downloadUrl:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->md5:Ljava/lang/String;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->updateflag:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->enforceflag:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorcode()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->errorcode:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatetitle()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->updatetitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnforceflag()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->enforceflag:Z

    return v0
.end method

.method public isUpdateflag()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->updateflag:Z

    return v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->detail:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->downloadUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setEnforceflag(Z)V
    .locals 0
    .param p1, "enforceflag"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->enforceflag:Z

    .line 120
    return-void
.end method

.method public setErrorcode(I)V
    .locals 0
    .param p1, "errorcode"    # I

    .line 127
    iput p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->errorcode:I

    .line 128
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->md5:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUpdateflag(Z)V
    .locals 0
    .param p1, "updateflag"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->updateflag:Z

    .line 112
    return-void
.end method

.method public setUpdatetitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatetitle"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->updatetitle:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->versionName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 84
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->detail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->updateflag:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;->enforceflag:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 91
    return-void
.end method
