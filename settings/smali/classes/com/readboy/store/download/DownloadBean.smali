.class public Lcom/readboy/store/download/DownloadBean;
.super Ljava/lang/Object;
.source "DownloadBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/readboy/store/download/DownloadBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deleteLast:I

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/readboy/store/download/DownloadBean$1;

    invoke-direct {v0}, Lcom/readboy/store/download/DownloadBean$1;-><init>()V

    sput-object v0, Lcom/readboy/store/download/DownloadBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/download/DownloadBean;->url:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/download/DownloadBean;->filePath:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/download/DownloadBean;->md5:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/store/download/DownloadBean;->fileName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "deleteLast"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    .line 71
    iput-object p1, p0, Lcom/readboy/store/download/DownloadBean;->url:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/readboy/store/download/DownloadBean;->filePath:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/readboy/store/download/DownloadBean;->md5:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "deleteLast"    # Z
    .param p5, "fileName"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    .line 78
    iput-object p1, p0, Lcom/readboy/store/download/DownloadBean;->url:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/readboy/store/download/DownloadBean;->filePath:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/readboy/store/download/DownloadBean;->fileName:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/readboy/store/download/DownloadBean;->md5:Ljava/lang/String;

    .line 82
    iput p4, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteLast()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    return v0
.end method

.method public setDeleteLast(I)V
    .locals 0
    .param p1, "deleteLast"    # I

    .line 112
    iput p1, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    .line 113
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/readboy/store/download/DownloadBean;->fileName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/readboy/store/download/DownloadBean;->filePath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/readboy/store/download/DownloadBean;->md5:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/readboy/store/download/DownloadBean;->url:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/readboy/store/download/DownloadBean;->deleteLast:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/readboy/store/download/DownloadBean;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
