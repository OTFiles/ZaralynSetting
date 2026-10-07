.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field protected mLimit:Z

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 55
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    .line 61
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    .line 69
    const/4 v1, 0x3

    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "limit"    # Z

    move-object/from16 v0, p0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    move/from16 v1, p2

    iput-boolean v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mLimit:Z

    .line 96
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==========divhee======DisplayDensityUtils=====mLimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mLimit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v3

    .line 99
    .local v3, "defaultDensity":I
    if-gtz v3, :cond_0

    .line 100
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 101
    iput-object v4, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 102
    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 103
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 108
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v6, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 112
    .local v6, "currentDensity":I
    const/4 v7, -0x1

    .line 115
    .local v7, "currentDensityIndex":I
    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 116
    .local v8, "minDimensionPx":I
    const/16 v9, 0xa0

    mul-int/2addr v9, v8

    div-int/lit16 v9, v9, 0x140

    .line 117
    .local v9, "maxDensity":I
    const/high16 v10, 0x3fc00000

    int-to-float v11, v9

    int-to-float v12, v3

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 118
    .local v10, "maxScale":F
    const v11, 0x3f59999a

    .line 119
    .local v11, "minScale":F
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v13, v10, v12

    const v14, 0x3db851ec    # 0.09f

    div-float/2addr v13, v14

    sget-object v14, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v14, v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v13

    float-to-int v13, v13

    .line 121
    .local v13, "numLarger":I
    const v14, 0x3fd55553

    sget-object v2, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v2, v2

    int-to-float v2, v2

    invoke-static {v14, v15, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 124
    .local v2, "numSmaller":I
    const/4 v14, 0x0

    .line 125
    .local v14, "entries":[Ljava/lang/String;
    iget-boolean v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mLimit:Z

    const/4 v12, 0x1

    if-nez v15, :cond_1

    .line 126
    add-int v15, v12, v2

    add-int/2addr v15, v13

    new-array v14, v15, [Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_1
    const/4 v15, 0x2

    new-array v14, v15, [Ljava/lang/String;

    .line 130
    :goto_0
    array-length v15, v14

    new-array v15, v15, [I

    .line 131
    .local v15, "values":[I
    const/16 v18, 0x0

    .line 133
    .local v18, "curIndex":I
    if-lez v2, :cond_4

    .line 134
    const v19, 0x3e199998

    int-to-float v12, v2

    div-float v19, v19, v12

    .line 135
    .local v19, "interval":F
    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_4

    .line 137
    int-to-float v1, v3

    move/from16 v20, v2

    add-int/lit8 v2, v12, 0x1

    .end local v2
    .local v20, "numSmaller":I
    int-to-float v2, v2

    mul-float v2, v2, v19

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v2, v17, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    .line 138
    .local v1, "density":I
    if-ne v6, v1, :cond_2

    .line 139
    move/from16 v7, v18

    .line 141
    :cond_2
    iget-boolean v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mLimit:Z

    if-nez v2, :cond_3

    .line 143
    sget-object v2, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v2, v2, v12

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v18

    .line 144
    aput v1, v15, v18

    .line 145
    add-int/lit8 v18, v18, 0x1

    .line 135
    .end local v1
    :cond_3
    add-int/lit8 v12, v12, -0x1

    move/from16 v2, v20

    move/from16 v1, p2

    goto :goto_1

    .line 150
    .end local v12
    .end local v19
    .end local v20
    .restart local v2
    :cond_4
    move/from16 v20, v2

    .end local v2
    .restart local v20
    if-ne v6, v3, :cond_5

    .line 151
    move/from16 v7, v18

    .line 153
    :cond_5
    aput v3, v15, v18

    .line 154
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v18

    .line 155
    const/4 v1, 0x1

    add-int/lit8 v18, v18, 0x1

    .line 157
    if-lez v13, :cond_8

    .line 158
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v10, v1

    int-to-float v1, v13

    div-float/2addr v2, v1

    .line 159
    .local v2, "interval":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v13, :cond_8

    .line 161
    int-to-float v12, v3

    move-object/from16 v21, v5

    add-int/lit8 v5, v1, 0x1

    .end local v5
    .local v21, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v5, v17, v5

    mul-float/2addr v12, v5

    float-to-int v5, v12

    and-int/lit8 v5, v5, -0x2

    .line 162
    .local v5, "density":I
    if-ne v6, v5, :cond_6

    .line 163
    move/from16 v7, v18

    .line 165
    :cond_6
    iget-boolean v12, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mLimit:Z

    if-nez v12, :cond_7

    .line 167
    aput v5, v15, v18

    .line 168
    sget-object v12, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v12, v12, v1

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v18

    .line 169
    add-int/lit8 v18, v18, 0x1

    .line 159
    .end local v5
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v21

    goto :goto_2

    .line 173
    .end local v1
    .end local v2
    .end local v21
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    :cond_8
    move-object/from16 v21, v5

    .end local v5
    .restart local v21
    iget-boolean v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mLimit:Z

    if-eqz v1, :cond_a

    .line 174
    const/16 v1, 0x100

    aput v1, v15, v18

    .line 175
    sget-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v18

    .line 176
    aget v1, v15, v18

    if-ne v6, v1, :cond_9

    .line 177
    move/from16 v1, v18

    .line 179
    .end local v7
    .local v1, "currentDensityIndex":I
    move v7, v1

    .end local v1
    .restart local v7
    :cond_9
    add-int/lit8 v18, v18, 0x1

    .line 183
    :cond_a
    if-ltz v7, :cond_b

    .line 184
    move v1, v7

    .local v1, "displayIndex":I
    goto :goto_3

    .line 188
    .end local v1
    :cond_b
    array-length v1, v15

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 189
    .local v1, "newLength":I
    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    .line 190
    aput v6, v15, v18

    .line 192
    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, [Ljava/lang/String;

    .line 193
    sget v5, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v2, v16

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v18

    .line 195
    nop

    .end local v1
    move/from16 v1, v18

    .line 198
    .local v1, "displayIndex":I
    :goto_3
    iput v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 199
    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 200
    iput-object v14, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 201
    iput-object v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 202
    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2
    .param p0, "displayId"    # I

    .line 245
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 246
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 2
    .param p0, "displayId"    # I

    .line 229
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 230
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 231
    .end local v0
    :catch_0
    move-exception v0

    .line 232
    .local v0, "exc":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 3
    .param p0, "displayId"    # I
    .param p1, "userId"    # I

    .line 248
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 249
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 252
    .end local v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to clear forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0
    :goto_0
    return-void
.end method

.method static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 3
    .param p0, "displayId"    # I
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .line 269
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 270
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V

    .line 273
    .end local v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to save forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0
    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "density"    # I

    .line 266
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 267
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
