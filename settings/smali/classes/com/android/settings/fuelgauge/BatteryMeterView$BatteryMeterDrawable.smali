.class public Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryMeterDrawable"
.end annotation


# instance fields
.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameColor"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 99
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public setBatteryColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 116
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 117
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 119
    return-void
.end method

.method public setWarningColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 113
    return-void
.end method
