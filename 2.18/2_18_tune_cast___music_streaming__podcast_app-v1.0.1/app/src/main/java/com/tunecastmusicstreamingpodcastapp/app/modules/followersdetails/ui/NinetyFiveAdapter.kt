package com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowNinetyfiveBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model.NinetyfiveRowModel
import kotlin.Int
import kotlin.collections.List

class NinetyFiveAdapter(
  var list: List<NinetyfiveRowModel>
) : RecyclerView.Adapter<NinetyFiveAdapter.RowNinetyfiveVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowNinetyfiveVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_ninetyfive,parent,false)
    return RowNinetyfiveVH(view)
  }

  override fun onBindViewHolder(holder: RowNinetyfiveVH, position: Int) {
    val ninetyfiveRowModel = NinetyfiveRowModel()
    // TODO uncomment following line after integration with data source
    // val ninetyfiveRowModel = list[position]
    holder.binding.ninetyfiveRowModel = ninetyfiveRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<NinetyfiveRowModel>) {
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
      item: NinetyfiveRowModel
    ) {
    }
  }

  inner class RowNinetyfiveVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowNinetyfiveBinding = RowNinetyfiveBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, NinetyfiveRowModel())
      }
    }
  }
}
