.class Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;
.super Ljava/lang/Object;
.source "SuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/suggestions/SuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardConfig"
.end annotation


# static fields
.field private static sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;


# instance fields
.field private final mMarginInner:I

.field private final mMarginOuter:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mWindowManager:Landroid/view/WindowManager;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 243
    const v1, 0x7f0701b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginInner:I

    .line 244
    nop

    .line 245
    const v1, 0x7f0701b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginOuter:I

    .line 246
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 249
    sget-object v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    .line 252
    :cond_0
    sget-object v0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->sConfig:Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;

    return-object v0
.end method

.method private getWidthForTwoCrads()I
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->getScreenWidth()I

    move-result v0

    iget v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginInner:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginOuter:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method getScreenWidth()I
    .locals 2

    .line 270
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 272
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method setCardLayout(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .param p2, "position"    # I

    .line 257
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->getWidthForTwoCrads()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p2, :cond_0

    iget v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginOuter:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginInner:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 260
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionAdapter$CardConfig;->mMarginOuter:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 261
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method
