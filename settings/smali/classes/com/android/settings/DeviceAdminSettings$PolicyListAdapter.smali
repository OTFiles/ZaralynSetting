.class Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminSettings;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/DeviceAdminSettings;

    .line 208
    iput-object p1, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 209
    nop

    .line 210
    invoke-virtual {p1}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .line 296
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;

    .line 298
    .local v1, "vh":Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 299
    .local v2, "activityIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    .line 300
    invoke-static {v5, p2}, Lcom/android/settings/DeviceAdminSettings;->access$200(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 299
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 301
    .local v3, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v4, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v4, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-static {v5, p2}, Lcom/android/settings/DeviceAdminSettings;->access$300(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 304
    invoke-direct {p0, p2}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v4

    .line 306
    .local v4, "enabled":Z
    :try_start_0
    iget-object v5, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v5

    .line 309
    :goto_0
    iget-object v5, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 310
    iget-object v5, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    iget-object v5, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 312
    iget-object v5, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 313
    return-void
.end method

.method private isEnabled(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 266
    move-object v0, p1

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 268
    .local v0, "info":Landroid/app/admin/DeviceAdminInfo;
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-static {v1, v0}, Lcom/android/settings/DeviceAdminSettings;->access$100(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x0

    return v1

    .line 271
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 285
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 287
    .local v1, "h":Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0a01d9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 288
    const v2, 0x7f0a0289

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 289
    const v2, 0x7f0a00dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/Switch;

    .line 290
    const v2, 0x7f0a0130

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 292
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 230
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings/DeviceAdminSettings;->access$000(Lcom/android/settings/DeviceAdminSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->info:Landroid/app/admin/DeviceAdminInfo;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 235
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "o":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 278
    invoke-direct {p0, p3}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 280
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, p2, v1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V

    .line 281
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "o":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
