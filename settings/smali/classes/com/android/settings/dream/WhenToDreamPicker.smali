.class public Lcom/android/settings/dream/WhenToDreamPicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "WhenToDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;
    }
.end annotation


# instance fields
.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private entries()[Ljava/lang/String;
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private keys()[Ljava/lang/String;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->entries()[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "entries":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "values":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;>;"
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gtz v3, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    if-eqz v1, :cond_2

    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_2

    .line 62
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 63
    new-instance v4, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;

    aget-object v5, v0, v3

    aget-object v6, v1, v3

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;-><init>(Lcom/android/settings/dream/WhenToDreamPicker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v3
    :cond_1
    return-object v2

    .line 59
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Entries and values must be of the same length."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_3
    :goto_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x2f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 43
    const v0, 0x7f1500c2

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 38
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 39
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 93
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-static {p1}, Lcom/android/settings/dream/DreamSettings;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setWhenToDream(I)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
