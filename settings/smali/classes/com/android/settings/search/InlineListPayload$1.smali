.class Lcom/android/settings/search/InlineListPayload$1;
.super Ljava/lang/Object;
.source "InlineListPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/InlineListPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/search/InlineListPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/search/InlineListPayload;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    new-instance v0, Lcom/android/settings/search/InlineListPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/search/InlineListPayload;-><init>(Landroid/os/Parcel;Lcom/android/settings/search/InlineListPayload$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/search/InlineListPayload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/search/InlineListPayload;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/settings/search/InlineListPayload;
    .locals 1
    .param p1, "size"    # I

    .line 59
    new-array v0, p1, [Lcom/android/settings/search/InlineListPayload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/search/InlineListPayload$1;->newArray(I)[Lcom/android/settings/search/InlineListPayload;

    move-result-object p1

    return-object p1
.end method
