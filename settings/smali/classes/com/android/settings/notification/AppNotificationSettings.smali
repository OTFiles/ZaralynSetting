.class public Lcom/android/settings/notification/AppNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppNotificationSettings.java"


# static fields
.field private static final DEBUG:Z

.field private static KEY_ADVANCED_CATEGORY:Ljava/lang/String;

.field private static KEY_APP_LINK:Ljava/lang/String;

.field private static KEY_BADGE:Ljava/lang/String;

.field private static KEY_GENERAL_CATEGORY:Ljava/lang/String;


# instance fields
.field private mChannelGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    .line 49
    const-string v0, "categories"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    .line 50
    const-string v0, "app_advanced"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_ADVANCED_CATEGORY:Ljava/lang/String;

    .line 51
    const-string v0, "badge"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_BADGE:Ljava/lang/String;

    .line 52
    const-string v0, "app_link"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_APP_LINK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    .line 222
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationSettings;
    .param p1, "x1"    # Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .line 45
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .line 45
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateList()V

    return-void
.end method

.method public static synthetic lambda$populateGroupToggle$0(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;
    .param p2, "preference1"    # Landroid/support/v7/preference/Preference;

    .line 211
    move-object v0, p2

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 212
    .local v0, "allowGroup":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings;->onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V

    .line 216
    const/4 v1, 0x1

    return v1
.end method

.method private populateGroupList()V
    .locals 8

    .line 176
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 177
    .local v1, "group":Landroid/app/NotificationChannelGroup;
    new-instance v2, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, "groupCategory":Landroid/support/v7/preference/PreferenceCategory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 180
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 183
    const v3, 0x7f12095b

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 185
    :cond_0
    sget-object v3, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/notification/AppNotificationSettings;->populateGroupToggle(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)V

    .line 191
    :goto_1
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 195
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 196
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 197
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v7

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;

    .line 195
    .end local v6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 200
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_2
    goto :goto_0

    .line 201
    :cond_3
    return-void
.end method

.method private populateList()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 154
    .local v1, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 155
    .end local v1
    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "groupCategory":Landroid/support/v7/preference/PreferenceCategory;
    const v1, 0x7f12095a

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 161
    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 163
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "empty":Landroid/support/v7/preference/Preference;
    const v2, 0x7f12093d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 169
    .end local v0
    .end local v1
    goto :goto_1

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateGroupList()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    .line 173
    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BlockPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/BlockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/BadgePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/BadgePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/AllowSoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/AllowSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/SoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settings/notification/SoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/LightsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/LightsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VibrationPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/VibrationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/VisibilityPreferenceController;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/VisibilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DndPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/DndPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/AppLinkPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/AppLinkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DescriptionPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/DescriptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/NotificationsOffPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/NotificationsOffPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/DeletedChannelsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/DeletedChannelsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "AppNotificationSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 58
    const/16 v0, 0x48

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 124
    const v0, 0x7f150019

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 65
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-boolean v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 67
    sget-object v1, Lcom/android/settings/notification/AppNotificationSettings;->KEY_BADGE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 68
    .local v1, "badge":Landroid/support/v7/preference/Preference;
    sget-object v2, Lcom/android/settings/notification/AppNotificationSettings;->KEY_APP_LINK:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 69
    .local v2, "appLink":Landroid/support/v7/preference/Preference;
    sget-object v3, Lcom/android/settings/notification/AppNotificationSettings;->KEY_ADVANCED_CATEGORY:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)Z

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 74
    :cond_0
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 78
    .end local v1
    .end local v2
    :cond_1
    return-void
.end method

.method protected onGroupBlockStateChanged(Landroid/app/NotificationChannelGroup;)V
    .locals 6
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;

    .line 238
    if-nez p1, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    nop

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 244
    .local v0, "groupGroup":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v0, :cond_5

    .line 245
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 248
    .local v3, "childCount":I
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 249
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 250
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    instance-of v5, v4, Lcom/android/settings/widget/MasterCheckBoxPreference;

    if-eqz v5, :cond_1

    .line 251
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v4
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v2
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    .line 255
    .restart local v4
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 256
    .end local v4
    goto :goto_1

    .line 257
    .end local v1
    .end local v3
    :cond_3
    goto :goto_3

    .line 258
    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 261
    .local v3, "N":I
    nop

    .restart local v2
    :goto_2
    if-ge v2, v3, :cond_5

    .line 262
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 263
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;

    .line 261
    .end local v4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 267
    .end local v1
    .end local v2
    .end local v3
    :cond_5
    :goto_3
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 82
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 84
    iget v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AppNotificationSettings$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 111
    .local v1, "controller":Lcom/android/settings/notification/NotificationPreferenceController;
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 113
    .end local v1
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->updatePreferenceStates()V

    .line 115
    return-void

    .line 85
    :cond_3
    :goto_1
    const-string v0, "AppNotificationSettings"

    const-string v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->finish()V

    .line 87
    return-void
.end method

.method protected populateGroupToggle(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannelGroup;)V
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "group"    # Landroid/app/NotificationChannelGroup;

    .line 205
    new-instance v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, "preference":Lcom/android/settingslib/RestrictedSwitchPreference;
    const v1, 0x7f12099b

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setTitle(I)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/AppNotificationSettings;->isChannelGroupBlockable(Landroid/app/NotificationChannelGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    move v1, v2

    goto :goto_0

    .line 208
    :cond_0
    const/4 v1, 0x0

    .line 207
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 209
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 210
    new-instance v1, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$KKPiatF9s2jsC7BTjM3YfK_E8S4;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 219
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 220
    return-void
.end method
