module JSDetox
module JSAnalyzer

class PluginManager

  def self.register_plugin(plugin, node_class)
    @@registered_plugins ||= {}
    @@registered_plugins[node_class] ||= []
    if !@@registered_plugins[node_class].include?(plugin)
      @@registered_plugins[node_class] << plugin
    end
  end

  def self.registered_plugins
    @@registered_plugins
  end

  def self.get_plugins(node_class)
    return self.registered_plugins[node_class]
  end
end

end
end
