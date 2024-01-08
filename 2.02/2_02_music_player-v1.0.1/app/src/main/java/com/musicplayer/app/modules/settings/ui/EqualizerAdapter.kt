package com.musicplayer.app.modules.settings.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.musicplayer.app.R
import com.musicplayer.app.databinding.RowEqualizerBinding
import com.musicplayer.app.modules.settings.`data`.model.EqualizerRowModel
import kotlin.Int
import kotlin.collections.List

class EqualizerAdapter(
  var list: List<EqualizerRowModel>
) : RecyclerView.Adapter<EqualizerAdapter.RowEqualizerVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEqualizerVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_equalizer,parent,false)
    return RowEqualizerVH(view)
  }

  override fun onBindViewHolder(holder: RowEqualizerVH, position: Int) {
    val equalizerRowModel = EqualizerRowModel()
    // TODO uncomment following line after integration with data source
    // val equalizerRowModel = list[position]
    holder.binding.equalizerRowModel = equalizerRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EqualizerRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: EqualizerRowModel
    ) {
    }
  }

  inner class RowEqualizerVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEqualizerBinding = RowEqualizerBinding.bind(itemView)
  }
}
