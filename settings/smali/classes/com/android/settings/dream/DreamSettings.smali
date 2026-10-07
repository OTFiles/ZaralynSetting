.class public Lcom/android/settings/dream/DreamSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DreamSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/android/settings/dream/DreamSettings$1;

    invoke-direct {v0}, Lcom/android/settings/dream/DreamSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 40
    invoke-static {p0}, Lcom/android/settings/dream/DreamSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
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

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/dream/CurrentDreamPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/android/settings/dream/WhenToDreamPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/WhenToDreamPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/android/settings/dream/StartNowPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/StartNowPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object v0
.end method

.method static getDreamSettingDescriptionResId(I)I
    .locals 1
    .param p0, "dreamSetting"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 87
    const v0, 0x7f120c4a

    return v0

    .line 84
    :pswitch_0    # 0x2
    const v0, 0x7f120c48

    return v0

    .line 82
    :pswitch_1    # 0x1
    const v0, 0x7f120c47

    return v0

    .line 80
    :pswitch_2    # 0x0
    const v0, 0x7f120c4c

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method static getKeyFromSetting(I)Ljava/lang/String;
    .locals 1
    .param p0, "dreamSetting"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 73
    const-string v0, "never"

    return-object v0

    .line 70
    :pswitch_0    # 0x2
    const-string v0, "either_charging_or_docked"

    return-object v0

    .line 68
    :pswitch_1    # 0x1
    const-string v0, "while_docked_only"

    return-object v0

    .line 66
    :pswitch_2    # 0x0
    const-string v0, "while_charging_only"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method static getSettingFromPrefKey(Ljava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5eeeb255

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x118fdea6

    if-eq v0, v1, :cond_2

    const v1, 0x63dca8c

    if-eq v0, v1, :cond_1

    const v1, 0x3cc2082c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "while_charging_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "never"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "either_charging_or_docked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "while_docked_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 59
    return v4

    .line 56
    :pswitch_0    # 0x2
    return v3

    .line 54
    :pswitch_1    # 0x1
    return v2

    .line 52
    :pswitch_2    # 0x0
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method static getSummaryTextFromBackend(Lcom/android/settingslib/dream/DreamBackend;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "backend"    # Lcom/android/settingslib/dream/DreamBackend;
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const v0, 0x7f120c4b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    .line 118
    .local v0, "backend":Lcom/android/settingslib/dream/DreamBackend;
    invoke-static {v0, p0}, Lcom/android/settings/dream/DreamSettings;->getSummaryTextFromBackend(Lcom/android/settingslib/dream/DreamBackend;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 113
    invoke-static {p1}, Lcom/android/settings/dream/DreamSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 103
    const v0, 0x7f1206d5

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "DreamSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 93
    const/16 v0, 0x2f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 98
    const v0, 0x7f150055

    return v0
.end method
