.class public abstract Lcom/android/settings/search/InlinePayload;
.super Lcom/android/settings/search/ResultPayload;
.source "InlinePayload.java"


# instance fields
.field final mDefaultvalue:I

.field final mIsDeviceSupported:Z

.field private final mSettingKey:Ljava/lang/String;

.field final mSettingSource:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 71
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Intent;ZI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "isDeviceSupported"    # Z
    .param p5, "defaultValue"    # I

    .line 63
    invoke-direct {p0, p3}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    .line 66
    iput-boolean p4, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    .line 67
    iput p5, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    .line 68
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/ResultPayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/android/settings/search/InlinePayload;->mSettingSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/search/InlinePayload;->mIsDeviceSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/android/settings/search/InlinePayload;->mDefaultvalue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
