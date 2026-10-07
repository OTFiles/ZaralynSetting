.class public Lcom/android/settings/notification/ZenModeEventRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeEventRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    }
.end annotation


# static fields
.field private static final CALENDAR_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Landroid/support/v7/preference/DropDownPreference;

.field private mCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCreate:Z

.field private mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

.field private mReply:Landroid/support/v7/preference/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 241
    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeEventRuleSettings;

    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 43
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addCalendars(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "outCalendars":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;>;"
    const-string v0, "\"primary\""

    .line 206
    .local v0, "primary":Ljava/lang/String;
    const-string v1, "_id"

    const-string v2, "calendar_displayName"

    const-string v3, "(account_name=ownerAccount) AS \"primary\""

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "projection":[Ljava/lang/String;
    const-string v1, "\"primary\" = 1"

    .line 209
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 211
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "\"primary\" = 1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 213
    if-nez v2, :cond_1

    .line 223
    if-eqz v2, :cond_0

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_0
    return-void

    .line 216
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    new-instance v3, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    invoke-direct {v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;-><init>()V

    .line 218
    .local v3, "ci":Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    iput v4, v3, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    .line 220
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    :cond_2
    if-eqz v2, :cond_3

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_3
    return-void

    .line 223
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private static getCalendars(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 187
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {p0, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 188
    .local v3, "userContext":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 189
    invoke-static {v3, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addCalendars(Landroid/content/Context;Ljava/util/List;)V

    .line 191
    .end local v2
    .end local v3
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    sget-object v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    return-object v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static key(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "calendar"    # Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 234
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "calendar"    # Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    .line 230
    iget v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reloadCalendar()V
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getCalendars(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const v2, 0x7f12120b

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    nop

    .line 98
    .local v2, "eventCalendar":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 99
    .local v3, "found":Z
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    .line 100
    .local v5, "calendar":Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    iget-object v6, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    if-eqz v2, :cond_1

    iget-object v6, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    const/4 v3, 0x1

    .line 105
    .end local v5
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v4, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    .line 85
    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    .line 86
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 170
    const/16 v0, 0x92

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 77
    const v0, 0x7f1500d2

    return v0
.end method

.method protected onCreateInternal()V
    .locals 8

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 119
    .local v1, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string v2, "calendar"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    .line 120
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const-string v2, "reply"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    .line 137
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 138
    const v5, 0x7f12120d

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 139
    const v5, 0x7f12120f

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 140
    const v5, 0x7f12120e

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 137
    invoke-virtual {v2, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 145
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 142
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateControlsInternal()V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    .line 72
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    .line 73
    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected updateControlsInternal()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 166
    return-void
.end method
