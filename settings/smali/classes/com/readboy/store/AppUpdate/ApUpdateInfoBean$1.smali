.class Lcom/readboy/store/AppUpdate/ApUpdateInfoBean$1;
.super Ljava/lang/Object;
.source "ApUpdateInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    new-instance v0, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;

    invoke-direct {v0, p1}, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;
    .locals 1
    .param p1, "size"    # I

    .line 97
    new-array v0, p1, [Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/readboy/store/AppUpdate/ApUpdateInfoBean$1;->newArray(I)[Lcom/readboy/store/AppUpdate/ApUpdateInfoBean;

    move-result-object p1

    return-object p1
.end method
