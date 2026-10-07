.class public Lcom/readboy/store/AppUpdate/UpdateInfoBean;
.super Ljava/lang/Object;
.source "UpdateInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/readboy/store/AppUpdate/UpdateInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private errorcode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorcode"
    .end annotation
.end field

.field private file:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file"
    .end annotation
.end field

.field private isAppForce:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAppForce"
    .end annotation
.end field

.field private isForce:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isForce"
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation
.end field

.field private pkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkgName"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private verName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionName"
    .end annotation
.end field

.field private version:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/readboy/store/AppUpdate/UpdateInfoBean$1;

    invoke-direct {v0}, Lcom/readboy/store/AppUpdate/UpdateInfoBean$1;-><init>()V

    sput-object v0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->appName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->pkgName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->title:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->verName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->content:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->file:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->md5:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->version:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isForce:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isAppForce:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->errorcode:I

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorcode()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->errorcode:I

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAppForce()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isAppForce:I

    return v0
.end method

.method public getIsForce()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isForce:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->version:J

    return-wide v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->appName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->content:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setErrorcode(I)V
    .locals 0
    .param p1, "errorcode"    # I

    .line 176
    iput p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->errorcode:I

    .line 177
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->file:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setIsAppForce(I)V
    .locals 0
    .param p1, "isAppForce"    # I

    .line 160
    iput p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isAppForce:I

    .line 161
    return-void
.end method

.method public setIsForce(I)V
    .locals 0
    .param p1, "isForce"    # I

    .line 168
    iput p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isForce:I

    .line 169
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->md5:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->pkgName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->title:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "verName"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->verName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setVersion(J)V
    .locals 0
    .param p1, "version"    # J

    .line 152
    iput-wide p1, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->version:J

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 181
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 78
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->verName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-wide v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->version:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isForce:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->isAppForce:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->errorcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
