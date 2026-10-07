.class public Lcom/android/settings/fuelgauge/BatteryActiveView;
.super Landroid/view/View;
.source "BatteryActiveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    .line 32
    return-void
.end method

.method private drawColor(Landroid/graphics/Canvas;IIIF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "color"    # I
    .param p5, "period"    # F

    .line 62
    if-nez p4, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    int-to-float v0, p2

    div-float/2addr v0, p5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v0, v1

    const/4 v4, 0x0

    int-to-float v0, p3

    div-float/2addr v0, p5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getColorArray()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 55
    .local v0, "array":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getPeriod()J

    move-result-wide v1

    long-to-float v1, v1

    .line 56
    .local v1, "period":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 57
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    move-object v3, p0

    move-object v4, p1

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/BatteryActiveView;->drawColor(Landroid/graphics/Canvas;IIIF)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v2
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    .line 47
    :cond_0
    return-void
.end method

.method public setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    .line 39
    :cond_0
    return-void
.end method
