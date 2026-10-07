.class public Lcom/android/settings/widget/DonutView;
.super Landroid/view/View;
.source "DonutView.java"


# instance fields
.field private mBackgroundCircle:Landroid/graphics/Paint;

.field private mBigNumberPaint:Landroid/text/TextPaint;

.field private mFilledArc:Landroid/graphics/Paint;

.field private mFullString:Ljava/lang/String;

.field private mMeterBackgroundColor:I

.field private mMeterConsumedColor:I

.field private mPercent:D

.field private mPercentString:Ljava/lang/String;

.field private mShowPercentString:Z

.field private mStrokeWidth:F

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    .line 72
    const v1, 0x7f0600ce

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    .line 73
    iget-object v1, p0, Lcom/android/settings/widget/DonutView;->mContext:Landroid/content/Context;

    const v2, 0x7f0600cf

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    .line 74
    const/4 v1, 0x1

    .line 75
    .local v1, "applyColorAccent":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0701a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    .line 78
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 79
    sget-object v4, Lcom/android/settings/R$styleable;->DonutView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 80
    .local v4, "styledAttrs":Landroid/content/res/TypedArray;
    iget v5, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    .line 82
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    .line 84
    invoke-virtual {v4, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 86
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    .line 88
    const/4 v5, 0x4

    iget v6, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    .line 90
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    .end local v4
    :cond_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    .line 94
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    .line 101
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    if-eqz v1, :cond_1

    .line 108
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v5, 0x1010435

    .line 110
    invoke-static {p1, v5}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    .local v4, "mAccentColorFilter":Landroid/graphics/ColorFilter;
    iget-object v5, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 113
    iget-object v5, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 116
    .end local v4
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 117
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    .line 118
    .local v5, "layoutDirection":I
    if-nez v5, :cond_2

    .line 119
    nop

    .line 120
    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v0

    .line 122
    .local v6, "bidiFlags":I
    :goto_0
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    .line 123
    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 125
    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    const v8, 0x7f0701a2

    .line 126
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 125
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 127
    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 128
    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setBidiFlags(I)V

    .line 130
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    .line 131
    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 132
    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    const v7, 0x7f0701a4

    .line 134
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 133
    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    const v7, 0x1040141

    .line 136
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-static {v7, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setBidiFlags(I)V

    .line 139
    return-void
.end method

.method private drawDonut(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 151
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    const/4 v1, 0x0

    add-float v3, v1, v0

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v4, v1, v0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v5, v0, v2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v6, v0, v2

    iget-object v10, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    .line 151
    const/high16 v7, -0x3d4c0000

    const/high16 v8, 0x43b40000

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 161
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v3, v1, v0

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v4, v1, v0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v5, v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v6, v0, v1

    iget-wide v0, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v8, v1, v0

    iget-object v10, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    .line 161
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 170
    return-void
.end method

.method private drawInnerText(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 173
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 174
    .local v2, "centerX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 175
    .local v3, "centerY":F
    iget-object v4, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v4

    iget-object v5, v0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v5}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v5

    add-float/2addr v4, v5

    .line 176
    .local v4, "totalHeight":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v6, v3

    .line 178
    .local v6, "startY":F
    new-instance v7, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v7}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    invoke-virtual {v7}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "localizedPercentSign":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    nop

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Lcom/android/settings/widget/DonutView;->getPercentageStringSpannable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v8

    .line 184
    .local v8, "percentStringSpan":Landroid/text/Spannable;
    new-instance v9, Landroid/text/StaticLayout;

    iget-object v12, v0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v13

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v9

    move-object v11, v8

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 186
    .local v9, "percentStringLayout":Landroid/text/StaticLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v4

    div-float/2addr v10, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    invoke-virtual {v9, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 191
    iget-object v5, v0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float v10, v6, v10

    iget-object v11, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5, v2, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    return-void
.end method

.method static getPercentageStringSpannable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "percentString"    # Ljava/lang/String;
    .param p2, "percentageSignString"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 238
    nop

    .line 239
    const v0, 0x7f0701a3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 240
    const v1, 0x7f0701a4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    .line 241
    .local v0, "fontProportion":F
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 242
    .local v1, "percentStringSpan":Landroid/text/Spannable;
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 243
    .local v2, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 246
    .local v3, "endIndex":I
    if-gez v2, :cond_0

    .line 247
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 251
    :cond_0
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v5, 0x22

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 256
    return-object v1
.end method

.method private getTextHeight(Landroid/text/TextPaint;)F
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 261
    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getMeterBackgroundColor()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    return v0
.end method

.method public getMeterConsumedColor()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawDonut(Landroid/graphics/Canvas;)V

    .line 145
    iget-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawInnerText(Landroid/graphics/Canvas;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setMeterBackgroundColor(I)V
    .locals 1
    .param p1, "meterBackgroundColor"    # I

    .line 219
    iput p1, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    .line 220
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    .line 222
    return-void
.end method

.method public setMeterConsumedColor(I)V
    .locals 1
    .param p1, "meterConsumedColor"    # I

    .line 230
    iput p1, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    .line 231
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    .line 233
    return-void
.end method

.method public setPercentage(D)V
    .locals 5
    .param p1, "percent"    # D

    .line 198
    iput-wide p1, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    .line 199
    iget-wide v0, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120dcc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a5

    .line 205
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120730

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DonutView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    .line 211
    return-void
.end method
