.class public Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
.super Lcom/android/settingslib/readboy/BaseScrollView;
.source "ZenModeScheduleDaysSelection.java"


# instance fields
.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "days"    # [I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/readboy/BaseScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    const v1, 0x7f07023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    .local v0, "hPad":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    .line 47
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 48
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 49
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v5, p2, v3

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v3
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 54
    .local v1, "c":Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v3

    .line 55
    .local v3, "daysOfWeek":[I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 56
    .local v4, "inflater":Landroid/view/LayoutInflater;
    move v5, v2

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 57
    aget v6, v3, v5

    .line 58
    .local v6, "day":I
    const v7, 0x7f0d024e

    invoke-virtual {v4, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 60
    .local v7, "checkBox":Landroid/widget/CheckBox;
    const/4 v8, 0x7

    invoke-virtual {v1, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 61
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    new-instance v8, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;

    invoke-direct {v8, p0, v6}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    .end local v6
    .end local v7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    .end local v5
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    .line 34
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v0

    return-object v0
.end method

.method private getDays()[I
    .locals 5

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 76
    .local v0, "rt":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 78
    .local v3, "day":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    .end local v3
    goto :goto_1

    .line 79
    .restart local v3
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 76
    .end local v3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 82
    .local v2, "rta":[I
    nop

    .local v1, "i":I
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 83
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    .end local v1
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 86
    return-object v2
.end method

.method protected static getDaysOfWeekForLocale(Ljava/util/Calendar;)[I
    .locals 5
    .param p0, "c"    # Ljava/util/Calendar;

    .line 90
    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 91
    .local v1, "daysOfWeek":[I
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 92
    .local v2, "currentDay":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 93
    if-le v2, v0, :cond_0

    const/4 v2, 0x1

    .line 94
    :cond_0
    aput v2, v1, v3

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v3
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 0
    .param p1, "days"    # [I

    .line 102
    return-void
.end method
