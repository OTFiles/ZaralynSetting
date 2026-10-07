.class public final Lcom/android/settings/dream/CurrentDreamPicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "CurrentDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;
    }
.end annotation


# instance fields
.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private getDreamComponentsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "comps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$t4o3LQXIuoDz_RsLdUZZYlwB3bA;

    invoke-direct {v2, v0}, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPicker$t4o3LQXIuoDz_RsLdUZZYlwB3bA;-><init>(Ljava/util/Map;)V

    .line 89
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 92
    return-object v0
.end method

.method static synthetic lambda$getDreamComponentsMap$0(Ljava/util/Map;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 2
    .param p0, "comps"    # Ljava/util/Map;
    .param p1, "info"    # Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 90
    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$hBSizG3ais67bSjAeIqNEa6sDBo;

    .line 73
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 74
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;>;"
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 51
    const/16 v0, 0x2f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 46
    const v0, 0x7f150032

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 42
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/dream/CurrentDreamPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPicker;->getDreamComponentsMap()Ljava/util/Map;

    move-result-object v0

    .line 57
    .local v0, "componentNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 59
    const/4 v1, 0x1

    return v1

    .line 61
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
