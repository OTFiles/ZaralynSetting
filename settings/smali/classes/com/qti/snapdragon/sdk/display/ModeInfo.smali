.class public Lcom/qti/snapdragon/sdk/display/ModeInfo;
.super Ljava/lang/Object;
.source "ModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/snapdragon/sdk/display/ModeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private modeType:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ModeInfo$1;

    invoke-direct {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo$1;-><init>()V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "pId"    # I
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pType"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->id:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->name:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    iput-object v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->modeType:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 33
    iput p1, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->id:I

    .line 34
    iput-object p2, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->name:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->values()[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->modeType:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->modeType:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
