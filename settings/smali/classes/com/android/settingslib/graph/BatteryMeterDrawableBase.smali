.class public Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawableBase.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field protected final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field protected mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mColors:[I

.field protected final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private final mFrame:Landroid/graphics/RectF;

.field protected final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mLevel:I

.field private mOldDarkIntensity:F

.field private final mOutlinePath:Landroid/graphics/Path;

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPlusFrame:Landroid/graphics/RectF;

.field protected final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field protected mPowerSaveAsColorError:Z

.field private mPowerSaveEnabled:Z

.field protected final mPowersavePaint:Landroid/graphics/Paint;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field protected final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field protected final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameColor"    # I

    .line 99
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    .line 76
    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    .line 77
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOldDarkIntensity:F

    .line 85
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    .line 87
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 95
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 96
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    .line 97
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    .line 100
    iput-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, "res":Landroid/content/res/Resources;
    sget v2, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 103
    .local v2, "levels":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 105
    .local v3, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    .line 106
    .local v4, "N":I
    const/4 v5, 0x2

    mul-int v6, v5, v4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 107
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 108
    iget-object v8, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int v9, v5, v7

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aput v10, v8, v9

    .line 109
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    if-ne v8, v5, :cond_0

    .line 110
    iget-object v8, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int v9, v5, v7

    add-int/2addr v9, v1

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v10

    invoke-static {p1, v10}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v10

    aput v10, v8, v9

    goto :goto_1

    .line 112
    :cond_0
    iget-object v8, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int v9, v5, v7

    add-int/2addr v9, v1

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    aput v10, v8, v9

    .line 107
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 115
    .end local v7
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    sget v5, Lcom/android/settingslib/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    .line 119
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$fraction;->battery_button_height_fraction:I

    invoke-virtual {v5, v6, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iput v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_left:I

    invoke-virtual {v5, v6, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iput v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_right:I

    invoke-virtual {v5, v6, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iput v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    .line 128
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    .line 129
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 131
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    .line 135
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 136
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    .line 140
    const-string v5, "sans-serif-condensed"

    invoke-static {v5, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 141
    .local v5, "font":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 144
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 145
    const-string v6, "sans-serif"

    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 146
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 147
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 148
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v6, v6

    if-le v6, v1, :cond_2

    .line 149
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$color;->meter_consumed_color:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    .line 154
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/R$color;->batterymeter_bolt_color:I

    invoke-static {v7, v8}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    sget v6, Lcom/android/settingslib/R$array;->batterymeter_bolt_points:I

    invoke-static {v0, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    .line 158
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    .line 159
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/R$color;->batterymeter_plus_color:I

    invoke-static {v7, v8}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    sget v6, Lcom/android/settingslib/R$array;->batterymeter_plus_points:I

    invoke-static {v0, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    .line 162
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    .line 163
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$dimen;->battery_powersave_outline_thickness:I

    .line 166
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 165
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settingslib/R$dimen;->battery_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    .line 170
    return-void
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    aget v2, v2, v1

    .line 276
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 277
    if-gt p1, v2, :cond_1

    .line 280
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_0

    .line 281
    iget v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    return v3

    .line 283
    :cond_0
    return v0

    .line 274
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 287
    .end local v1
    .end local v2
    :cond_2
    return v0
.end method

.method public static synthetic lambda$ExJ0HHRzS2_LMtcBJqtFiovbn0w(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private static loadPoints(Landroid/content/res/Resources;I)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "pointArrayRes"    # I

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 222
    .local v0, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 223
    .local v2, "maxY":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "maxX":I
    .local v4, "maxY":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 224
    aget v5, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 225
    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 223
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 227
    .end local v1
    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    .line 228
    .local v1, "ptsF":[F
    nop

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 229
    aget v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v1, v3

    .line 230
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    aput v6, v1, v5

    .line 228
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 232
    .end local v3
    :cond_1
    return-object v1
.end method

.method private updateSize()V
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 244
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 245
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    .line 246
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 247
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    .line 248
    return-void
.end method


# virtual methods
.method protected batteryColorForLevel(I)I
    .locals 1
    .param p1, "level"    # I

    .line 299
    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v0

    goto :goto_1

    .line 300
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    .line 299
    :goto_1
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "c"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 306
    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 307
    .local v2, "level":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 309
    .local v3, "bounds":Landroid/graphics/Rect;
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return-void

    .line 311
    :cond_0
    int-to-float v4, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 312
    .local v4, "drawFrac":F
    iget v5, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 313
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getAspectRatio()F

    move-result v6

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 314
    .local v6, "width":I
    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    sub-int/2addr v7, v6

    const/4 v8, 0x2

    div-int/2addr v7, v8

    .line 315
    .local v7, "px":I
    int-to-float v9, v5

    iget v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 316
    .local v9, "buttonHeight":I
    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    .line 317
    .local v10, "left":I
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v5

    .line 319
    .local v11, "top":I
    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v10

    int-to-float v14, v11

    add-int v15, v6, v10

    int-to-float v15, v15

    add-int v8, v5, v11

    int-to-float v8, v8

    invoke-virtual {v12, v13, v14, v15, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 320
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    int-to-float v12, v7

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 323
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    int-to-float v14, v6

    const v15, 0x3e8f5c29    # 0.28f

    mul-float/2addr v14, v15

    .line 324
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v12, v14

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    move-object/from16 v18, v3

    int-to-float v3, v6

    .end local v3
    .local v18, "bounds":Landroid/graphics/Rect;
    mul-float/2addr v3, v15

    .line 326
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v13, v3

    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v15, v9

    add-float/2addr v3, v15

    .line 323
    invoke-virtual {v8, v12, v14, v13, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 330
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v8, v3, Landroid/graphics/RectF;->top:F

    int-to-float v12, v9

    add-float/2addr v8, v12

    iput v8, v3, Landroid/graphics/RectF;->top:F

    .line 333
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->batteryColorForLevel(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    const/16 v3, 0x60

    if-lt v2, v3, :cond_1

    .line 336
    const/high16 v4, 0x3f800000

    goto :goto_0

    .line 337
    :cond_1
    iget v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-gt v2, v3, :cond_2

    .line 338
    const/4 v4, 0x0

    .line 341
    :cond_2
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v8, v4, v3

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 342
    :cond_3
    iget-object v8, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    sub-float v13, v3, v4

    mul-float/2addr v12, v13

    add-float/2addr v8, v12

    .line 345
    .local v8, "levelTop":F
    :goto_1
    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 346
    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getRadiusRatio()F

    move-result v12

    iget-object v13, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    int-to-float v14, v9

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    .line 348
    .local v12, "radius":F
    iget-object v13, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    sget-object v14, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v13, v14}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 349
    iget-object v13, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v12, v12, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 350
    iget-object v13, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 351
    iget-object v13, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v12, v12, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 352
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 353
    .local v13, "p":Landroid/graphics/Path;
    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 354
    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    sget-object v15, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {v14, v13, v15}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 356
    iget-boolean v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    const/16 v19, 0x1

    if-eqz v14, :cond_8

    .line 359
    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v21, 0x40800000    # 4.0f

    div-float v15, v15, v21

    add-float/2addr v14, v15

    add-float/2addr v14, v3

    .line 360
    .local v14, "bl":F
    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v22, 0x40c00000    # 6.0f

    div-float v3, v3, v22

    add-float/2addr v15, v3

    .line 361
    .local v15, "bt":F
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move/from16 v23, v4

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .end local v4
    .local v23, "drawFrac":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v21

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    .line 362
    .local v3, "br":F
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v6

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .end local v6
    .local v24, "width":I
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v21, 0x41200000    # 10.0f

    div-float v6, v6, v21

    sub-float/2addr v4, v6

    .line 363
    .local v4, "bb":F
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v14

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v15

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_4

    goto :goto_2

    .line 380
    :cond_4
    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v7

    move/from16 v28, v9

    move/from16 v29, v12

    goto/16 :goto_4

    .line 365
    :cond_5
    :goto_2
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6, v14, v15, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 367
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    move/from16 v25, v3

    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .end local v3
    .local v25, "br":F
    iget v3, v3, Landroid/graphics/RectF;->left:F

    move/from16 v26, v4

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    .end local v4
    .local v26, "bb":F
    const/16 v20, 0x0

    aget v4, v4, v20

    move/from16 v27, v7

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 368
    .end local v7
    .local v27, "px":I
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v7, v7, v19

    move/from16 v28, v9

    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 369
    .end local v9
    .local v28, "buttonHeight":I
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v7, v9

    add-float/2addr v4, v7

    .line 367
    invoke-virtual {v6, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    const/16 v16, 0x2

    .local v16, "i":I
    :goto_3
    move/from16 v3, v16

    .end local v16
    .local v3, "i":I
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 371
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v7, v7, v3

    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 372
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    add-int/lit8 v16, v3, 0x1

    aget v9, v9, v16

    move/from16 v29, v12

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 373
    .end local v12
    .local v29, "radius":F
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v9, v12

    add-float/2addr v7, v9

    .line 371
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 370
    add-int/lit8 v16, v3, 0x2

    .end local v3
    .restart local v16
    move/from16 v12, v29

    goto :goto_3

    .line 375
    .end local v16
    .end local v29
    .restart local v12
    :cond_6
    move/from16 v29, v12

    .end local v12
    .restart local v29
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 376
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v7, v7, v19

    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 377
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    .line 375
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 380
    :goto_4
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v6

    div-float/2addr v3, v4

    .line 381
    .local v3, "boltPct":F
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 382
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_7

    .line 384
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 387
    :cond_7
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 389
    .end local v3
    .end local v14
    .end local v15
    .end local v25
    .end local v26
    :goto_5
    goto/16 :goto_9

    .end local v23
    .end local v24
    .end local v27
    .end local v28
    .end local v29
    .local v4, "drawFrac":F
    .restart local v6
    .restart local v7
    .restart local v9
    .restart local v12
    :cond_8
    move/from16 v23, v4

    move/from16 v24, v6

    move/from16 v27, v7

    move/from16 v28, v9

    move/from16 v29, v12

    .end local v4
    .end local v6
    .end local v7
    .end local v9
    .end local v12
    .restart local v23
    .restart local v24
    .restart local v27
    .restart local v28
    .restart local v29
    iget-boolean v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_c

    .line 391
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v3, v6

    .line 392
    .local v3, "pw":F
    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v7, v3

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    .line 393
    .local v6, "pl":F
    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v9, v3

    div-float/2addr v9, v4

    add-float/2addr v7, v9

    .line 394
    .local v7, "pt":F
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v3

    div-float/2addr v12, v4

    sub-float/2addr v9, v12

    .line 395
    .local v9, "pr":F
    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    sub-float/2addr v14, v3

    div-float/2addr v14, v4

    sub-float/2addr v12, v14

    .line 396
    .local v12, "pb":F
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_9

    goto :goto_6

    .line 414
    :cond_9
    move/from16 v30, v3

    move/from16 v31, v6

    move/from16 v32, v7

    const/16 v20, 0x0

    goto/16 :goto_8

    .line 398
    :cond_a
    :goto_6
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v6, v7, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 399
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 400
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/16 v17, 0x0

    aget v15, v15, v17

    move/from16 v30, v3

    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 401
    .end local v3
    .local v30, "pw":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v15, v15, v19

    move/from16 v31, v6

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 402
    .end local v6
    .local v31, "pl":F
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v15, v6

    add-float/2addr v3, v15

    .line 400
    invoke-virtual {v4, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 403
    const/16 v16, 0x2

    .restart local v16
    :goto_7
    move/from16 v3, v16

    .end local v16
    .local v3, "i":I
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    array-length v4, v4

    if-ge v3, v4, :cond_b

    .line 404
    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v14, v14, v3

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 405
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-float/2addr v14, v15

    add-float/2addr v6, v14

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    add-int/lit8 v16, v3, 0x1

    aget v15, v15, v16

    move/from16 v32, v7

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 406
    .end local v7
    .local v32, "pt":F
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v15, v7

    add-float/2addr v14, v15

    .line 404
    invoke-virtual {v4, v6, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 403
    add-int/lit8 v16, v3, 0x2

    .end local v3
    .restart local v16
    move/from16 v7, v32

    goto :goto_7

    .line 408
    .end local v16
    .end local v32
    .restart local v7
    :cond_b
    move/from16 v32, v7

    .end local v7
    .restart local v32
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/16 v20, 0x0

    aget v6, v6, v20

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 409
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v7, v7, v19

    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 410
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v7, v14

    add-float/2addr v6, v7

    .line 408
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    :goto_8
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 415
    iget-boolean v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v3, :cond_d

    .line 416
    iget-object v3, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v9
    .end local v12
    .end local v30
    .end local v31
    .end local v32
    goto :goto_a

    .line 421
    :cond_c
    :goto_9
    const/16 v20, 0x0

    :cond_d
    :goto_a
    const/4 v3, 0x0

    .line 422
    .local v3, "pctOpaque":Z
    const/4 v4, 0x0

    .local v4, "pctX":F
    const/4 v6, 0x0

    .line 423
    .local v6, "pctY":F
    const/4 v7, 0x0

    .line 424
    .local v7, "pctText":Ljava/lang/String;
    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v9, :cond_10

    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-nez v9, :cond_10

    iget v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-le v2, v9, :cond_10

    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    if-eqz v9, :cond_10

    .line 425
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v14, v5

    .line 428
    iget v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    const/16 v12, 0x64

    if-ne v15, v12, :cond_e

    const v12, 0x3ec28f5c

    goto :goto_b

    :cond_e
    const/high16 v12, 0x3f000000    # 0.5f

    :goto_b
    mul-float/2addr v14, v12

    .line 426
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 429
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v9, v9

    iput v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    .line 430
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 431
    iget v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v9, v9

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v9, v12

    int-to-float v12, v10

    add-float v4, v9, v12

    .line 432
    iget v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v9, v9

    iget v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    add-float/2addr v9, v12

    const v12, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v9, v12

    int-to-float v12, v11

    add-float v6, v9, v12

    .line 433
    cmpl-float v9, v8, v6

    if-lez v9, :cond_f

    goto :goto_c

    :cond_f
    move/from16 v19, v20

    :goto_c
    move/from16 v3, v19

    .line 434
    if-nez v3, :cond_10

    .line 435
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 436
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    const/16 v35, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v36

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    move-object/from16 v33, v9

    move-object/from16 v34, v7

    move/from16 v37, v4

    move/from16 v38, v6

    move-object/from16 v39, v12

    invoke-virtual/range {v33 .. v39}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 438
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    sget-object v14, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v9, v12, v14}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 443
    :cond_10
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 446
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iput v8, v9, Landroid/graphics/RectF;->top:F

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 448
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 449
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 452
    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v9, :cond_12

    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-nez v9, :cond_12

    .line 453
    iget v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    if-gt v2, v9, :cond_11

    .line 455
    iget v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v9, v9

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v9, v12

    int-to-float v12, v10

    add-float/2addr v9, v12

    .line 456
    .local v9, "x":F
    iget v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v12, v12

    iget v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    add-float/2addr v12, v14

    const v14, 0x3ef5c28f    # 0.48f

    mul-float/2addr v12, v14

    int-to-float v14, v11

    add-float/2addr v12, v14

    .line 457
    .local v12, "y":F
    iget-object v14, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v9, v12, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 458
    .end local v9
    .end local v12
    goto :goto_d

    :cond_11
    if-eqz v3, :cond_12

    .line 460
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v4, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 465
    :cond_12
    :goto_d
    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v9, :cond_13

    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v9, :cond_13

    iget-boolean v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveAsColorError:Z

    if-eqz v9, :cond_13

    .line 466
    iget-object v9, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowersavePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 468
    :cond_13
    return-void
.end method

.method protected getAspectRatio()F
    .locals 1

    .line 494
    const v0, 0x3f147ae1    # 0.58f

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    return v0
.end method

.method public getCharging()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    return v0
.end method

.method public getCriticalLevel()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 252
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    .line 256
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method protected getRadiusRatio()F
    .locals 1

    .line 498
    const v0, 0x3d70f0f1    # 0.05882353f

    return v0
.end method

.method protected postInvalidate()V
    .locals 3

    .line 216
    new-instance v0, Lcom/android/settingslib/graph/-$$Lambda$BatteryMeterDrawableBase$ExJ0HHRzS2_LMtcBJqtFiovbn0w;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$$Lambda$BatteryMeterDrawableBase$ExJ0HHRzS2_LMtcBJqtFiovbn0w;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 217
    new-instance v0, Lcom/android/settingslib/graph/-$$Lambda$BatteryMeterDrawableBase$ExJ0HHRzS2_LMtcBJqtFiovbn0w;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$$Lambda$BatteryMeterDrawableBase$ExJ0HHRzS2_LMtcBJqtFiovbn0w;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 218
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 473
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .param p1, "val"    # I

    .line 197
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 198
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 199
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    invoke-direct {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->updateSize()V

    .line 239
    return-void
.end method

.method public setCharging(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 188
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 190
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 477
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 478
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 479
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 480
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 481
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 482
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 264
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 265
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 266
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 267
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 269
    invoke-direct {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->updateSize()V

    .line 270
    return-void
.end method

.method public setShowPercent(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 185
    return-void
.end method
