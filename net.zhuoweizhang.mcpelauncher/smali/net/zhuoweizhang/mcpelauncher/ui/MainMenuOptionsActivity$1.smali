.class Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;
.super Ljava/lang/Object;
.source "MainMenuOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->activity:Ljava/lang/ref/WeakReference;

    .line 75
    :goto_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updateStates()V

    .line 77
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updateTP()V

    .line 78
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updateSkin()V

    .line 79
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updatePatches()V

    .line 80
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updateScripts()V

    .line 81
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    iget-object v2, v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    iget-object v1, v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 90
    return-void
.end method

.method protected updatePatches()V
    .locals 9

    .prologue
    .line 138
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    .line 139
    .local v0, "a":Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    move-result-object v3

    .line 140
    .local v3, "p":Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;
    const/4 v5, 0x0

    .line 141
    .local v5, "sum":Ljava/lang/String;
    iget-object v6, v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    invoke-virtual {v6}, Lde/ankri/views/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    const-string v7, "ptpatches"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v1, v6

    .line 143
    .local v1, "count":I
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isPro()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getMaxPatches()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 144
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getMaxPatches()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 146
    :cond_0
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    sget v7, Lnet/zhuoweizhang/mcpelauncher/R$string;->plurals_patches_more:I

    invoke-virtual {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "descr":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 148
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    sget v7, Lnet/zhuoweizhang/mcpelauncher/R$string;->plurals_patches_one:I

    invoke-virtual {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    :cond_1
    if-nez v1, :cond_3

    .line 150
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    sget v7, Lnet/zhuoweizhang/mcpelauncher/R$string;->plurals_patches_no:I

    invoke-virtual {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 155
    .end local v1    # "count":I
    .end local v2    # "descr":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v4, v5

    .line 156
    .local v4, "sm":Ljava/lang/String;
    new-instance v6, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;

    invoke-direct {v6, p0, v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 162
    const/4 v0, 0x0

    .line 163
    return-void

    .line 152
    .end local v4    # "sm":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v2    # "descr":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledPatches()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected updateScripts()V
    .locals 9

    .prologue
    .line 166
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    .line 167
    .local v0, "a":Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->access$100(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    move-result-object v3

    .line 168
    .local v3, "p":Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;
    const/4 v5, 0x0

    .line 169
    .local v5, "sum":Ljava/lang/String;
    iget-object v6, v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    invoke-virtual {v6}, Lde/ankri/views/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    const-string v7, "modscripts"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v1, v6

    .line 171
    .local v1, "count":I
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isPro()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getMaxScripts()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 172
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getMaxScripts()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 174
    :cond_0
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    sget v7, Lnet/zhuoweizhang/mcpelauncher/R$string;->plurals_scripts_more:I

    invoke-virtual {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "descr":Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 176
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    sget v7, Lnet/zhuoweizhang/mcpelauncher/R$string;->plurals_scripts_one:I

    invoke-virtual {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    :cond_1
    if-nez v1, :cond_3

    .line 178
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    sget v7, Lnet/zhuoweizhang/mcpelauncher/R$string;->plurals_scripts_no:I

    invoke-virtual {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    .end local v1    # "count":I
    .end local v2    # "descr":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v4, v5

    .line 184
    .local v4, "sm":Ljava/lang/String;
    new-instance v6, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;

    invoke-direct {v6, p0, v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    const/4 v0, 0x0

    .line 191
    return-void

    .line 180
    .end local v4    # "sm":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v2    # "descr":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledScripts()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method protected updateSkin()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected updateStates()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$3;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;)V

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method protected updateTP()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
