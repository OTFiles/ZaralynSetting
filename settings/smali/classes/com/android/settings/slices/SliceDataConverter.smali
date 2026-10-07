.class Lcom/android/settings/slices/SliceDataConverter;
.super Ljava/lang/Object;
.source "SliceDataConverter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSliceData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    .line 84
    return-void
.end method

.method private getAccessibilitySliceData()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 241
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 243
    .local v2, "sliceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;

    .line 244
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "accessibilityControllerClassName":Ljava/lang/String;
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "fragmentClassName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const v5, 0x7f120074

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 248
    .local v5, "screenTitle":Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v0}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    .line 249
    invoke-virtual {v0, v4}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v5}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v3}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v6

    .line 253
    .local v6, "sliceDataBuilder":Lcom/android/settings/slices/SliceData$Builder;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v7, v0

    .line 254
    .local v7, "a11yServiceNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    const v8, 0x7f030043

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilityServiceInfoList()Ljava/util/List;

    move-result-object v8

    .line 257
    .local v8, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 259
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 260
    .local v11, "a11yServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 261
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 262
    .local v13, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 263
    .local v14, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v15, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v0

    .line 264
    .local v15, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "flattenedName":Ljava/lang/String;
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    nop

    .line 259
    .end local v1
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    :goto_1
    move-object/from16 v1, p0

    goto :goto_0

    .line 270
    .restart local v1
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_0
    invoke-virtual {v12, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v16, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "title":Ljava/lang/String;
    .local v16, "accessibilityControllerClassName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    .line 272
    .local v0, "iconResource":I
    if-nez v0, :cond_1

    .line 273
    const/high16 v0, 0x7f0f0000

    .line 276
    .end local v0
    .local v4, "iconResource":I
    .local v17, "fragmentClassName":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v4

    move v4, v0

    invoke-virtual {v6, v1}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v3}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v4}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v0

    move-object/from16 v18, v3

    const/4 v3, 0x1

    .line 279
    .end local v3
    .local v18, "title":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    .line 281
    :try_start_0
    invoke-virtual {v6}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 285
    move-object/from16 v20, v5

    goto :goto_2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Lcom/android/settings/slices/SliceData$InvalidSliceDataException;
    const-string v3, "SliceDataConverter"

    move/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4
    .local v19, "iconResource":I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "Invalid data when building a11y SliceData for "

    .end local v5
    .local v20, "screenTitle":Ljava/lang/CharSequence;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0
    .end local v1
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v18
    .end local v19
    :goto_2
    nop

    .line 259
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v20

    goto :goto_1

    .line 287
    .end local v16
    .end local v17
    .end local v20
    .local v3, "accessibilityControllerClassName":Ljava/lang/String;
    .local v4, "fragmentClassName":Ljava/lang/String;
    .restart local v5
    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    .end local v3
    .end local v4
    .end local v5
    .restart local v16
    .restart local v17
    .restart local v20
    return-object v2
.end method

.method private getSliceDataFromProvider(Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "provider"    # Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .param p2, "fragmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "sliceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    iget-object v1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 131
    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    if-nez v1, :cond_0

    .line 134
    return-object v0

    .line 139
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableResource;

    .line 140
    .local v3, "resource":Landroid/provider/SearchIndexableResource;
    iget v4, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 141
    .local v4, "xmlResId":I
    if-nez v4, :cond_1

    .line 142
    const-string v5, "SliceDataConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " provides invalid XML (0) in search provider."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0, v4, p2}, Lcom/android/settings/slices/SliceDataConverter;->getSliceDataFromXML(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 147
    .local v5, "xmlSliceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 150
    :cond_2
    return-object v0
.end method

.method private getSliceDataFromXML(ILjava/lang/String;)Ljava/util/List;
    .locals 21
    .param p1, "xmlResId"    # I
    .param p2, "fragmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 154
    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 156
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 159
    .local v5, "xmlSliceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    :try_start_0
    iget-object v0, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v4, v0

    .line 162
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v6, v0

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    const/4 v0, 0x2

    if-eq v6, v0, :cond_0

    .end local v6
    goto :goto_0

    .line 167
    .restart local v6
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "nodeName":Ljava/lang/String;
    const-string v7, "PreferenceScreen"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 174
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 175
    .local v7, "attrs":Landroid/util/AttributeSet;
    iget-object v8, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "screenTitle":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const/16 v10, 0xfe

    invoke-static {v9, v2, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v9

    .line 190
    .local v9, "metadata":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 193
    .local v11, "bundle":Landroid/os/Bundle;
    const-string v12, "controller"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 194
    .local v12, "controllerClassName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 195
    goto :goto_1

    .line 198
    :cond_1
    const-string v13, "key"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, "key":Ljava/lang/String;
    const-string v14, "title"

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 200
    .local v14, "title":Ljava/lang/String;
    const-string v15, "summary"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, "summary":Ljava/lang/String;
    const-string v2, "icon"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 202
    .local v2, "iconResId":I
    move/from16 v16, v6

    iget-object v6, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .end local v6
    .local v16, "type":I
    invoke-static {v6, v12, v13}, Lcom/android/settings/slices/SliceBuilderUtils;->getSliceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 204
    .local v6, "sliceType":I
    move-object/from16 v17, v7

    const-string v7, "platform_slice"

    .end local v7
    .local v17, "attrs":Landroid/util/AttributeSet;
    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 206
    .local v7, "isPlatformSlice":Z
    move-object/from16 v18, v9

    new-instance v9, Lcom/android/settings/slices/SliceData$Builder;

    .end local v9
    .local v18, "metadata":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {v9}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    .line 207
    invoke-virtual {v9, v13}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 208
    invoke-virtual {v9, v14}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 209
    invoke-virtual {v9, v15}, Lcom/android/settings/slices/SliceData$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 210
    invoke-virtual {v9, v2}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 211
    invoke-virtual {v9, v8}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 212
    invoke-virtual {v9, v12}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 213
    invoke-virtual {v9, v3}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 214
    invoke-virtual {v9, v6}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 215
    invoke-virtual {v9, v7}, Lcom/android/settings/slices/SliceData$Builder;->setPlatformDefined(Z)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v9

    .line 216
    invoke-virtual {v9}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v9

    .line 218
    .local v9, "xmlSlice":Lcom/android/settings/slices/SliceData;
    move/from16 v19, v2

    iget-object v2, v1, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 219
    .end local v2
    .local v19, "iconResId":I
    invoke-static {v2, v9}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v2

    .line 222
    .local v2, "controller":Lcom/android/settings/core/BasePreferenceController;
    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->isSliceable()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 223
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v2
    .end local v6
    .end local v7
    .end local v9
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v19
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    nop

    .line 190
    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    move/from16 v2, p1

    goto/16 :goto_1

    .line 235
    .end local v0
    .end local v8
    .end local v16
    .end local v17
    .end local v18
    :cond_3
    if-eqz v4, :cond_5

    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    .line 169
    .restart local v0
    .local v6, "type":I
    :cond_4
    move/from16 v16, v6

    .end local v6
    .restart local v16
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    .end local v0
    .end local v16
    :try_end_1
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    const-string v2, "SliceDataConverter"

    const-string v6, "Resource not found error parsing PreferenceScreen: "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v0
    if-eqz v4, :cond_5

    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SliceDataConverter"

    const-string v6, "IO Error parsing PreferenceScreen: "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v0
    if-eqz v4, :cond_5

    goto :goto_2

    .line 228
    :catch_2
    move-exception v0

    .line 229
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "SliceDataConverter"

    const-string v6, "XML Error parsing PreferenceScreen: "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v0
    if-eqz v4, :cond_5

    goto :goto_2

    .line 226
    :catch_3
    move-exception v0

    .line 227
    .local v0, "e":Lcom/android/settings/slices/SliceData$InvalidSliceDataException;
    const-string v2, "SliceDataConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data when building SliceData for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    goto :goto_2

    .line 237
    :cond_5
    :goto_3
    return-object v5

    .line 235
    :goto_4
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method getAccessibilityServiceInfoList()Ljava/util/List;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 294
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSliceData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 104
    .local v0, "indexableClasses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 105
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "fragmentName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v4

    .line 111
    .local v4, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    if-nez v4, :cond_1

    .line 112
    const-string v5, "SliceDataConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " dose not implement Search Index Provider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/settings/slices/SliceDataConverter;->getSliceDataFromProvider(Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 118
    .local v5, "providerSliceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    iget-object v6, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilitySliceData()Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "a11ySliceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/slices/SliceData;>;"
    iget-object v2, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v2, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    return-object v2
.end method
