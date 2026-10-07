.class public Lcom/android/settings/location/LocationFooterPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "LocationFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;
    }
.end annotation


# static fields
.field private static final INJECT_INTENT:Landroid/content/Intent;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFooterInjectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.DISPLAYED_FOOTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationFooterPreferenceController;->INJECT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 59
    :cond_0
    return-void
.end method

.method private getFooterData()Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/location/LocationFooterPreferenceController;->INJECT_INTENT:Landroid/content/Intent;

    .line 149
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 152
    const-string v2, "LocationFooter"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const-string v1, "LocationFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/settings/location/LocationFooterPreferenceController;->INJECT_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 156
    :cond_0
    const-string v2, "LocationFooter"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    const-string v2, "LocationFooter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found broadcast receivers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v2, "footerDataList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 162
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 163
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 166
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x5

    if-nez v7, :cond_3

    .line 167
    const-string v7, "LocationFooter"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    const-string v7, "LocationFooter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring attempt to inject footer from app not in system image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto :goto_0

    .line 175
    :cond_3
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_4

    .line 176
    const-string v7, "LocationFooter"

    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 177
    const-string v7, "LocationFooter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No METADATA in broadcast receiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    goto :goto_0

    .line 182
    :cond_4
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.location.FOOTER_STRING"

    .line 183
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 184
    .local v7, "footerTextRes":I
    if-nez v7, :cond_5

    .line 185
    const-string v9, "LocationFooter"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 186
    const-string v8, "LocationFooter"

    const-string v9, "No mapping of integer exists for com.android.settings.location.FOOTER_STRING"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_5
    new-instance v8, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v7, v6, v9}, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;-><init>(ILandroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    goto/16 :goto_0

    .line 199
    :cond_6
    return-object v2
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "location_footer"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/location/LocationFooterPreferenceController;->getFooterData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 126
    .local v1, "componentName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.location.REMOVED_FOOTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    iget-object v3, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    .end local v1
    .end local v2
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method sendBroadcastFooterDisplayed(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.DISPLAYED_FOOTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 73
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 74
    iget-object v1, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/location/LocationFooterPreferenceController;->getFooterData()Ljava/util/Collection;

    move-result-object v1

    .line 76
    .local v1, "footerData":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;

    .line 78
    .local v3, "data":Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;
    new-instance v4, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    .line 81
    .local v4, "footerPreference":Lcom/android/settingslib/widget/FooterPreference;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v3, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 83
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v3, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->footerStringRes:I

    .line 84
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "footerString":Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 92
    nop

    .line 94
    invoke-virtual {v4, v5}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 98
    iget-object v6, v3, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v6}, Lcom/android/settings/location/LocationFooterPreferenceController;->sendBroadcastFooterDisplayed(Landroid/content/ComponentName;)V

    .line 99
    iget-object v6, p0, Lcom/android/settings/location/LocationFooterPreferenceController;->mFooterInjectors:Ljava/util/Collection;

    iget-object v7, v3, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->componentName:Landroid/content/ComponentName;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 85
    .restart local v3
    .restart local v4
    :catch_0
    move-exception v5

    .line 86
    .local v5, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "LocationFooter"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    const-string v6, "LocationFooter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources not found for application "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/settings/location/LocationFooterPreferenceController$FooterData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    goto :goto_0

    .line 101
    .end local v3
    .end local v4
    .end local v5
    :cond_1
    return-void
.end method
