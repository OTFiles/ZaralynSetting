.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "x2"    # Landroid/app/FragmentManager;

    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/ZenModeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/notification/ZenModeBehaviorMsgEventReminderPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeBehaviorMsgEventReminderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/android/settings/notification/ZenModeBehaviorSoundPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeBehaviorSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/android/settings/notification/ZenModeBehaviorCallsPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeBehaviorCallsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeBlockedEffectsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/android/settings/notification/ZenModeDurationPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/ZenModeDurationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/android/settings/notification/ZenModeButtonPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/settings/notification/ZenModeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 76
    const v0, 0x7f1206a3

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 66
    const/16 v0, 0x4c

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 61
    const v0, 0x7f1500d6

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 57
    return-void
.end method
