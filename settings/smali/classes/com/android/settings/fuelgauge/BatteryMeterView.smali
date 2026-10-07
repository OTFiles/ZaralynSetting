.class public Lcom/android/settings/fuelgauge/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
    }
.end annotation


# instance fields
.field mAccentColorFilter:Landroid/graphics/ColorFilter;

.field mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

.field mErrorColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const v0, 0x7f0600ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 53
    .local v0, "frameColor":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 54
    const v2, 0x1010435

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    .line 55
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 56
    const v2, 0x7f060030

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    .line 58
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    .line 59
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setShowPercent(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setWarningColorFilter(Landroid/graphics/ColorFilter;)V

    .line 63
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public getCharging()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->getCharging()Z

    move-result v0

    return v0
.end method

.method public setBatteryLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 67
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryLevel(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->getCriticalLevel()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    .line 73
    :goto_0
    return-void
.end method

.method public setCharging(Z)V
    .locals 1
    .param p1, "charging"    # Z

    .line 80
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setCharging(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->postInvalidate()V

    .line 82
    return-void
.end method
