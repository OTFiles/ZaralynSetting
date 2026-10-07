.class final Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintServicesController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;
    .param p2, "x1"    # Lcom/android/settings/print/PrintSettingsFragment$1;

    .line 162
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    .line 166
    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 167
    .local v0, "printManager":Landroid/print/PrintManager;
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Landroid/print/PrintServicesLoader;

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object v1

    .line 171
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 162
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;>;"
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 180
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "print_services_category"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 187
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    .line 188
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 189
    const-string v2, "PrintSettingsFragment"

    const-string v3, "No preference context, skip adding print services"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 193
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    .line 194
    .local v3, "service":Landroid/printservice/PrintServiceInfo;
    new-instance v4, Landroid/support/v7/preference/Preference;

    invoke-direct {v4, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 196
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 200
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 202
    const-class v7, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 203
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 205
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 206
    iget-object v7, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v8, 0x7f120a43

    invoke-virtual {v7, v8}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v7, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v8, 0x7f120a42

    invoke-virtual {v7, v8}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    :goto_1
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 212
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 213
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_4
    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 217
    .local v8, "extras":Landroid/os/Bundle;
    const-string v9, "EXTRA_CHECKED"

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string v9, "EXTRA_TITLE"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v9, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v9}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 222
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    goto/16 :goto_0

    .line 224
    :cond_5
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 225
    .local v2, "addNewServicePreference":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_6

    .line 226
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 228
    :cond_6
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 232
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;>;"
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 233
    return-void
.end method
