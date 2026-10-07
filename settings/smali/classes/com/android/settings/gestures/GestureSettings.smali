.class public Lcom/android/settings/gestures/GestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/gestures/GestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/GestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/GestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "GestureSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 54
    const/16 v0, 0x1cb

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 64
    const v0, 0x7f150060

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 70
    const-class v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    .line 71
    const-class v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureSettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    .line 72
    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureSettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    .line 73
    return-void
.end method
