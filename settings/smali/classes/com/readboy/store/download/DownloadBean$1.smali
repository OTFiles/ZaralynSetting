.class Lcom/readboy/store/download/DownloadBean$1;
.super Ljava/lang/Object;
.source "DownloadBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/download/DownloadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/readboy/store/download/DownloadBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/readboy/store/download/DownloadBean;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    new-instance v0, Lcom/readboy/store/download/DownloadBean;

    invoke-direct {v0, p1}, Lcom/readboy/store/download/DownloadBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/readboy/store/download/DownloadBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/readboy/store/download/DownloadBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/readboy/store/download/DownloadBean;
    .locals 1
    .param p1, "size"    # I

    .line 98
    new-array v0, p1, [Lcom/readboy/store/download/DownloadBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/readboy/store/download/DownloadBean$1;->newArray(I)[Lcom/readboy/store/download/DownloadBean;

    move-result-object p1

    return-object p1
.end method
