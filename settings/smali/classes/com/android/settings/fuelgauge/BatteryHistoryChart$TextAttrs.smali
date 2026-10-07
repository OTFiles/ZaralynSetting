.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextAttrs"
.end annotation


# instance fields
.field styleIndex:I

.field textColor:Landroid/content/res/ColorStateList;

.field textSize:I

.field typefaceIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 238
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 240
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    return-void
.end method


# virtual methods
.method apply(Landroid/content/Context;Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paint"    # Landroid/text/TextPaint;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p2, Landroid/text/TextPaint;->density:F

    .line 279
    nop

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 279
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 283
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "tf":Landroid/graphics/Typeface;
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 296
    :pswitch_0    # 0x3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 292
    :pswitch_1    # 0x2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 293
    goto :goto_0

    .line 288
    :pswitch_2    # 0x1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 289
    nop

    .line 300
    :goto_0
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V

    .line 301
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Landroid/content/res/TypedArray;
    .param p3, "index"    # I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 245
    .local v2, "ap":I
    if-eq v2, v1, :cond_0

    .line 246
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    :cond_0
    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 251
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 252
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 254
    .local v5, "attr":I
    packed-switch v5, :pswitch_data_0

    .end local v5
    goto :goto_1

    .line 256
    .restart local v5
    :pswitch_0    # 0x3
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 257
    goto :goto_1

    .line 268
    :pswitch_1    # 0x2
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .end local v5
    goto :goto_1

    .line 264
    .restart local v5
    :pswitch_2    # 0x1
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 265
    goto :goto_1

    .line 260
    :pswitch_3    # 0x0
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 261
    nop

    .line 251
    .end local v5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    .end local v4
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    .end local v3
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V
    .locals 5
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "tf"    # Landroid/graphics/Typeface;
    .param p3, "style"    # I

    .line 304
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p3, :cond_4

    .line 305
    if-nez p2, :cond_0

    .line 306
    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 311
    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 313
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 314
    .local v2, "typefaceStyle":I
    :goto_1
    not-int v3, v2

    and-int/2addr v3, p3

    .line 315
    .local v3, "need":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 316
    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_3

    const/high16 v0, -0x41800000

    nop

    :cond_3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 317
    .end local v2
    .end local v3
    goto :goto_2

    .line 318
    :cond_4
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 319
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 320
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 322
    :goto_2
    return-void
.end method
