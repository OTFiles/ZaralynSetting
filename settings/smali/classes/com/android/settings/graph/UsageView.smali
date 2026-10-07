.class public Lcom/android/settings/graph/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settings/graph/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0220

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v0, 0x7f0a04bb

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/graph/UsageGraph;

    iput-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    .line 39
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/TextView;

    .line 40
    const v2, 0x7f0a0222

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 41
    const v2, 0x7f0a0225

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 42
    const v2, 0x7f0a0227

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    .line 44
    new-array v1, v5, [Landroid/widget/TextView;

    .line 45
    const v2, 0x7f0a0226

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v3

    .line 46
    const v2, 0x7f0a0223

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    .line 48
    sget-object v1, Lcom/android/settingslib/R$styleable;->UsageView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 57
    .local v0, "color":I
    iget-object v2, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v5, v2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    .line 58
    .local v7, "v":Landroid/widget/TextView;
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .end local v7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v5, v2

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    .line 61
    .restart local v7
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .end local v7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    .end local v0
    :cond_3
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 66
    .local v0, "gravity":I
    const v2, 0x800005

    if-ne v0, v2, :cond_4

    .line 67
    const v5, 0x7f0a01b4

    invoke-virtual {p0, v5}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 68
    .local v5, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0a0224

    invoke-virtual {p0, v6}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 70
    .local v6, "labels":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    const v2, 0x7f0a0088

    invoke-virtual {p0, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 76
    .local v2, "bottomLabels":Landroid/widget/LinearLayout;
    const v7, 0x7f0a0089

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 77
    .local v7, "bottomSpace":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    .end local v2
    .end local v5
    .end local v6
    .end local v7
    goto :goto_2

    :cond_4
    const v2, 0x800003

    if-ne v0, v2, :cond_5

    .end local v0
    goto :goto_2

    .line 80
    .restart local v0
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported gravity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v0
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/graph/UsageGraph;->setAccentColor(I)V

    .line 84
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private setWeight(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "weight"    # F

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 1
    .param p1, "points"    # Landroid/util/SparseIntArray;

    .line 92
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    .line 93
    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 1
    .param p1, "points"    # Landroid/util/SparseIntArray;

    .line 96
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->addProjectedPath(Landroid/util/SparseIntArray;)V

    .line 97
    return-void
.end method

.method public clearPaths()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0}, Lcom/android/settings/graph/UsageGraph;->clearPaths()V

    .line 89
    return-void
.end method

.method public configureGraph(II)V
    .locals 1
    .param p1, "maxX"    # I
    .param p2, "maxY"    # I

    .line 100
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/graph/UsageGraph;->setMax(II)V

    .line 101
    return-void
.end method

.method public setAccentColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 104
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->setAccentColor(I)V

    .line 105
    return-void
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .line 137
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0
    :cond_0
    return-void

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerColors(II)V
    .locals 1
    .param p1, "middleColor"    # I
    .param p2, "topColor"    # I

    .line 112
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/graph/UsageGraph;->setDividerColors(II)V

    .line 113
    return-void
.end method

.method public setDividerLoc(I)V
    .locals 1
    .param p1, "dividerLoc"    # I

    .line 108
    iget-object v0, p0, Lcom/android/settings/graph/UsageView;->mUsageGraph:Lcom/android/settings/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settings/graph/UsageGraph;->setDividerLoc(I)V

    .line 109
    return-void
.end method

.method public setSideLabelWeights(FF)V
    .locals 1
    .param p1, "before"    # F
    .param p2, "after"    # F

    .line 116
    const v0, 0x7f0a03e9    # 1.8345377E38f

    invoke-direct {p0, v0, p1}, Lcom/android/settings/graph/UsageView;->setWeight(IF)V

    .line 117
    const v0, 0x7f0a03ea    # 1.8345379E38f

    invoke-direct {p0, v0, p2}, Lcom/android/settings/graph/UsageView;->setWeight(IF)V

    .line 118
    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .line 128
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0
    :cond_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
