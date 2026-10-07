.class Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsDefaultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/SmsDefaultDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmsDefaultDialog;)V
    .locals 3

    .line 162
    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    .line 164
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getSelectedIndex()I

    move-result p1

    .line 166
    .local p1, "selected":I
    if-lez p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 168
    .local v0, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    const/4 p1, 0x0

    .line 171
    .end local v0
    :cond_0
    iput p1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    .line 172
    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 233
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;>;"
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 237
    .local v3, "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :try_start_0
    iget-object v4, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 238
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 239
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 240
    new-instance v6, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 241
    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8, v4}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;-><init>(Lcom/android/settings/SmsDefaultDialog$AppListAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 240
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v4
    .end local v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    .line 245
    :catch_0
    move-exception v4

    .line 248
    .end local v3
    :goto_1
    goto :goto_0

    .line 249
    :cond_1
    return-object v1
.end method

.method private getSelectedIndex()I
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 256
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "defaultSmsAppPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    iget-object v3, v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    return v2

    .line 259
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v1
    .end local v2
    :cond_1
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 181
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 214
    .local v0, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    return-object v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 192
    .local v0, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v1}, Lcom/android/settings/SmsDefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 193
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    const v3, 0x7f0d003b

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, "view":Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 195
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget v5, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    const v6, 0x7f0a0127

    if-ne p1, v5, :cond_0

    .line 197
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :goto_0
    const v2, 0x1020006

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 202
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v5, v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-object v3
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 227
    iget v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
