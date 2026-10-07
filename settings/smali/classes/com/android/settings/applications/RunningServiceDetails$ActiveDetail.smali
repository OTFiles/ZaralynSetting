.class Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mInstaller:Landroid/content/ComponentName;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningServiceDetails;

    .line 83
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 118
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 119
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    const/4 v2, 0x5

    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 120
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 124
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 126
    new-instance v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 128
    .local v2, "info":Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v4, v4, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v6, v6, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto :goto_1

    .line 131
    :cond_1
    const-wide/16 v4, -0x1

    iput-wide v4, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 133
    :goto_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v4, "comp":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v5}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "service_dump.txt"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 136
    .local v5, "filename":Ljava/io/File;
    const/4 v6, 0x0

    move-object v7, v6

    .line 138
    .local v7, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v8

    .line 139
    const-string v8, "activity"

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "-a"

    aput-object v11, v10, v1

    const-string v1, "service"

    aput-object v1, v10, v3

    const/4 v1, 0x2

    .line 140
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v1

    .line 139
    invoke-static {v8, v9, v10}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    .line 144
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 141
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "RunningServicesDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t dump service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    goto :goto_2

    .line 146
    :cond_2
    :goto_3
    move-object v1, v6

    .line 148
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 149
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v3, v8

    new-array v3, v3, [B

    .line 150
    .local v3, "buffer":[B
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 151
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    .line 155
    .end local v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v3

    goto :goto_6

    .line 152
    :catch_3
    move-exception v3

    .line 153
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "RunningServicesDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t read service dump: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_4

    .line 157
    :cond_3
    :goto_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 158
    const-string v3, "RunningServicesDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Details: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 160
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "result":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    const-string v6, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v6, v3}, Lcom/android/settings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void

    .line 155
    .end local v3
    :goto_6
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v6

    :cond_4
    :goto_7
    throw v3

    .line 144
    .end local v1
    :goto_8
    if-eqz v7, :cond_5

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception v3

    :cond_5
    :goto_9
    throw v1

    .line 168
    .end local v0
    .end local v2
    .end local v4
    .end local v5
    .end local v7
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 170
    :try_start_8
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10080000

    const/high16 v5, 0x80000

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    :try_end_8
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a

    .line 178
    :catch_6
    move-exception v0

    .line 179
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    goto :goto_a

    .line 176
    :catch_7
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    goto :goto_a

    .line 174
    :catch_8
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "RunningServicesDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0
    :goto_a
    goto :goto_b

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v0, :cond_8

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto :goto_b

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_b

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v0}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 192
    :goto_b
    return-void
.end method

.method stopActiveService(Z)V
    .locals 5
    .param p1, "confirmed"    # Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 95
    .local v0, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 96
    iget-object v2, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/settings/applications/RunningServiceDetails;->access$000(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    .line 98
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 102
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 105
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 110
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-static {v1}, Lcom/android/settings/applications/RunningServiceDetails;->access$100(Lcom/android/settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 114
    :goto_0
    return-void
.end method
