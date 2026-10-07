.class public Lcom/android/settings/search/InlineSwitchPayload;
.super Lcom/android/settings/search/InlinePayload;
.source "InlineSwitchPayload.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/search/InlineSwitchPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsStandard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/search/InlineSwitchPayload$1;

    invoke-direct {v0}, Lcom/android/settings/search/InlineSwitchPayload$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/InlineSwitchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/search/InlinePayload;-><init>(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/search/InlineSwitchPayload$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/settings/search/InlineSwitchPayload$1;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "onValue"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "isDeviceSupported"    # Z
    .param p6, "defaultValue"    # I

    .line 49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/InlinePayload;-><init>(Ljava/lang/String;ILandroid/content/Intent;ZI)V

    .line 51
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    .line 52
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/InlinePayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-boolean v0, p0, Lcom/android/settings/search/InlineSwitchPayload;->mIsStandard:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
