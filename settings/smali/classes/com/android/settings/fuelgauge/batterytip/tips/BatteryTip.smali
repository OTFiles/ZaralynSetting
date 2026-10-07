.class public abstract Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.super Ljava/lang/Object;
.source "BatteryTip.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;"
    }
.end annotation


# static fields
.field static final TIP_ORDER:Landroid/util/SparseIntArray;


# instance fields
.field protected mNeedUpdate:Z

.field protected mShowDialog:Z

.field protected mState:I

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    .line 74
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 75
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 76
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 77
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 78
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 79
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 82
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "showDialog"    # Z

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    .line 103
    iput p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    .line 104
    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    .line 99
    return-void
.end method


# virtual methods
.method public buildPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 147
    return-object v0
.end method

.method public compareTo(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)I
    .locals 3
    .param p1, "o"    # Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 177
    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sget-object v1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->TIP_ORDER:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->compareTo(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getIconId()I
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_battery_tip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    return v0
.end method

.method public abstract getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public getType()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    return v0
.end method

.method public abstract log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
.end method

.method public needUpdate()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    return v0
.end method

.method public shouldShowDialog()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mShowDialog:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mNeedUpdate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    return-void
.end method
